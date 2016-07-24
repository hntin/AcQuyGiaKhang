package hgksoft.acquy.bo;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader;
import hgksoft.acquy.dbaccess.LoaiSanPhamMapper;
import hgksoft.acquy.dto.LoaiSanPhamDTO;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author HNTIN
 */
public class LoaiSanPhamBO {

    public JSONObject createNode(int id, String text, int open) {
        JSONObject node = new JSONObject();
        node.put("id", new Integer(id));
        node.put("text", text);
        node.put("open", new Integer(open));
        return node;
    }

    private LoaiSanPhamDTO createTree(LoaiSanPhamDTO root, List<LoaiSanPhamDTO> lookupTable) {
        List<LoaiSanPhamDTO> dsNodeCon = getDsNodeCon(root, lookupTable);
        if (dsNodeCon.size() > 0) {
            root.setDsLSPCon(dsNodeCon);
            for (LoaiSanPhamDTO i : dsNodeCon) {
                createTree(i, lookupTable);
            }
        }
        return root;
    }

    public JSONArray getJsonTree() throws Exception{
        LoaiSanPhamMapper mapper = null;
        JSONArray jsonTree = new JSONArray();
        try {
            mapper = new LoaiSanPhamMapper();
            List<LoaiSanPhamDTO> lookupTable = mapper.getDSTatCaLoaiSanPham();
            LoaiSanPhamDTO rootLSPDTO = mapper.getRootLSP();
            createTree(rootLSPDTO, lookupTable);
            return rootLSPDTO.toJsonObject();
        } catch (Exception ex) {
            Logger.getLogger(LoaiSanPhamBO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (mapper != null)
                mapper.closeConnection();
        }
        return jsonTree;
    }

    private List<LoaiSanPhamDTO> getDsNodeCon(LoaiSanPhamDTO node, List<LoaiSanPhamDTO> lookupTable) {
        List<LoaiSanPhamDTO> dsNodeCon = new ArrayList<LoaiSanPhamDTO>();
        for (LoaiSanPhamDTO i : lookupTable) {
            if (i.getMaLoaiSPCha() == node.getMaLSP()) {
                dsNodeCon.add(i);
            }
        }
        return dsNodeCon;
    }

    public int createLoaiSanPham(LoaiSanPhamDTO loaiSPDTO) throws Exception {
        LoaiSanPhamMapper mapper = null;
        int result = 0;
        try {
            mapper = new LoaiSanPhamMapper();
            result = mapper.createLoaiSanPham(loaiSPDTO);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return result;
    }

    public int updateLoaiSanPham(LoaiSanPhamDTO loaiSPDTO) throws Exception {
        LoaiSanPhamMapper mapper = null;
        int result = 0;
        try {
            mapper = new LoaiSanPhamMapper();
            result = mapper.updateLoaiSanPham(loaiSPDTO);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return result;
    }

    public int deleteLoaiSanPham(String dsMaLoaiSanPham) throws Exception {
        LoaiSanPhamMapper mapper = null;
        int result = 0;
        try {
            mapper = new LoaiSanPhamMapper();
            if (dsMaLoaiSanPham != null && !dsMaLoaiSanPham.equals("")) {
                String[] arrStr = dsMaLoaiSanPham.split(",");
                for (int i = 0; i < arrStr.length; i++) {
                    if (mapper.deleteLoaiSanPham(arrStr[i]) != 0) {
                        result += 1;
                    }
                }
            }
        } catch (Exception e) {
            return -1;
        } finally {
            mapper.closeConnection();
        }
        return result;
    }

    public LoaiSanPhamDTO getLoaiSanPhamDTO(String maLoaiSanPham) throws Exception {
        LoaiSanPhamMapper mapper = null;
        LoaiSanPhamDTO lspDTO;
        try {
            mapper = new LoaiSanPhamMapper();
            lspDTO = mapper.getLoaiSanPhamDTO(maLoaiSanPham);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return lspDTO;
    }

    public List<LoaiSanPhamDTO> getDSTatCaLoaiSanPham() throws Exception {
        List<LoaiSanPhamDTO> dsLoaiSanPhamDTO = null;
        LoaiSanPhamMapper mapper = null;
        try {
            mapper = new LoaiSanPhamMapper();
            dsLoaiSanPhamDTO = mapper.getDSTatCaLoaiSanPham();
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return dsLoaiSanPhamDTO;
    }

    public List<LoaiSanPhamDTO> getDSLoaiSanPham(String mucLoaiSanPham) throws Exception {
        List<LoaiSanPhamDTO> dsLoaiSanPhamDTO = null;
        LoaiSanPhamMapper mapper = null;
        try {
            mapper = new LoaiSanPhamMapper();
            dsLoaiSanPhamDTO = mapper.getDSLoaiSanPham(mucLoaiSanPham);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return dsLoaiSanPhamDTO;
    }

    public List<LoaiSanPhamDTO> getDSLoaiSanPhamMucDuoi(int maLoaiCha) throws Exception {
        List<LoaiSanPhamDTO> dsLoaiSanPhamDTO = null;
        LoaiSanPhamMapper mapper = null;
        try {
            mapper = new LoaiSanPhamMapper();
            dsLoaiSanPhamDTO = mapper.getDSLoaiSanPhamMucDuoi(maLoaiCha);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return dsLoaiSanPhamDTO;
    }
}
