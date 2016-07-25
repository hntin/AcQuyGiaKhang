package hgksoft.acquy.bo;

import hgksoft.acquy.dbaccess.SanPhamMapper;
import hgksoft.acquy.dto.SanPhamDTO;

import java.util.List;

/**
 *
 * @author HNTIN
 */
public class SanPhamBO {

    public int createSanPham(SanPhamDTO sanphamDTO) throws Exception {
        SanPhamMapper mapper = null;
        int result = 0;
        try {
            mapper = new SanPhamMapper();
            result = mapper.createSanPham(sanphamDTO);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return result;
    }
    
    public int updateSanPham(SanPhamDTO sanphamDTO) throws Exception {
        SanPhamMapper mapper = null;
        int result = 0;
        try {
            mapper = new SanPhamMapper();
            result = mapper.updateSanPham(sanphamDTO);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return result;
    }
    
    public int deleteSanPham(String dsMaSanPham) throws Exception {
        SanPhamMapper mapper = null;
        int result = 0;
        try {
            mapper = new SanPhamMapper();
            if (dsMaSanPham != null && !dsMaSanPham.equals("")) {
                String[] arrStr = dsMaSanPham.split(",");
                for (int i = 0; i < arrStr.length; i++) {
                    if (mapper.deleteSanPham(arrStr[i]) != 0) {
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

    public SanPhamDTO getSanPhamDTO(String maSanPham) throws Exception {
        SanPhamMapper mapper = null;
        SanPhamDTO nguoiDungDTO;
        try {
            mapper = new SanPhamMapper();
            nguoiDungDTO = mapper.getSanPhamDTO(maSanPham);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return nguoiDungDTO;
    }
    
    public List<SanPhamDTO> getDSSanPham(
            String maSanPham, String tenSanPham, String moTaSanPham, 
            String hangSX, String noiSX, String loaiSP, String tinhTrangSP) throws Exception {
        List<SanPhamDTO> dsSanPhamDTO = null;
        SanPhamMapper mapper = null;
        try {
            mapper = new SanPhamMapper();
            dsSanPhamDTO = mapper.getDSSanPham(maSanPham, tenSanPham, moTaSanPham, hangSX, noiSX, loaiSP, tinhTrangSP);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return dsSanPhamDTO;
    }
    
    public List<SanPhamDTO> getDSSanPham(String maSanPham, String tenSanPham) throws Exception {
        List<SanPhamDTO> dsSanPhamDTO = null;
        SanPhamMapper mapper = null;
        try {
            mapper = new SanPhamMapper();
            dsSanPhamDTO = mapper.getDSSanPham(maSanPham, tenSanPham);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return dsSanPhamDTO;
    }
    
    public List<SanPhamDTO> getDSSanPham(int maLoaiSanPham) throws Exception {
        List<SanPhamDTO> dsSanPhamDTO = null;
        SanPhamMapper mapper = null;
        try {
            mapper = new SanPhamMapper();
            dsSanPhamDTO = mapper.getDSSanPham(maLoaiSanPham);
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return dsSanPhamDTO;
    }
    
    public List<SanPhamDTO> getDSTatCaSanPham() throws Exception {
        List<SanPhamDTO> dsSanPhamDTO = null;
        SanPhamMapper mapper = null;
        try {
            mapper = new SanPhamMapper();
            dsSanPhamDTO = mapper.getDSTatCaSanPham();
        } catch (Exception e) {
            throw e;
        } finally {
            mapper.closeConnection();
        }
        return dsSanPhamDTO;
    }

    
}
