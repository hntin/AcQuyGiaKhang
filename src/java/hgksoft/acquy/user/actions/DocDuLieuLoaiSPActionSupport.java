package hgksoft.acquy.user.actions;

import com.opensymphony.xwork2.ActionSupport;
import hgksoft.acquy.bo.LoaiSanPhamBO;
import hgksoft.acquy.dto.LoaiSanPhamDTO;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 *
 * @author HNTIN
 */
public class DocDuLieuLoaiSPActionSupport extends ActionSupport {

    public DocDuLieuLoaiSPActionSupport() {
    }

    public String execute() throws Exception {
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpServletResponse response = ServletActionContext.getResponse();
        PrintWriter out = response.getWriter();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        LoaiSanPhamBO lspBO = new LoaiSanPhamBO();        
        JSONArray jsonTree = lspBO.getJsonTree();
        String data = jsonTree.toJSONString();
        out.println(jsonTree.toJSONString());
        out.flush();

        return SUCCESS;
    }

//    public JSONArray loadTreeOfProductCategory() throws Exception {
//        JSONArray treeData = new JSONArray();
//
//        LoaiSanPhamDTO lspDTO;
//        LoaiSanPhamBO lspBO = new LoaiSanPhamBO();
//
//        // Tạo nút gốc
//        lspDTO = lspBO.getLoaiSanPhamDTO("0");
//        JSONObject rootNode = createNode(lspDTO.getMaLSP(),
//                lspDTO.getTenLSP(), 0);
//
//        // Đọc dữ liệu mức 1
//        // Đọc dữ liệu mức 2
//        // Đọc dữ liệu mức 3
//        // Lấy danh sách các node con và thêm vào node đang xét 
//        // Điều kiện dừng? --> Số node thêm vào cây = Số node trong DB?
//        int id = 1;
//        JSONArray muc_1 = new JSONArray();
//        for (int i = 0; i < 5; i++) {
//            JSONObject m1 = createNode(id++, i + "", 0);
//            muc_1.add(m1);
//            JSONArray muc_2 = new JSONArray();
//            for (int j = 0; j < 5; j++) {
//                JSONObject m2 = createNode(id++, i + "", 0);
//                muc_2.add(m2);
//                JSONArray muc_3 = new JSONArray();
//                for (int k = 0; k < 5; k++) {
//                    JSONObject m3 = createNode(id++, i + "", 0);
//                    muc_3.add(m3);
//                }
//                m2.put("items", muc_3);
//            }
//            m1.put("items", muc_2);
//        }
//        rootNode.put("items", muc_1);
//
//        treeData.add(rootNode);
//        return treeData;
//    }
//
//    public JSONObject createNode(int id, String text, int open) {
//        JSONObject node = new JSONObject();
//        node.put("id", new Integer(id));
//        node.put("text", text);
//        node.put("open", new Integer(open));
//        return node;
//    }

//    public JSONArray createNodeList(List<LoaiSanPhamDTO> dsLoaiSP) {
//        JSONArray listNode = new JSONArray();
//        for (int i = 0; i < dsLoaiSP.size(); i++) {
//            LoaiSanPhamDTO loaiSPDTO = dsLoaiSP.get(i);
//            listNode.add(createNode(loaiSPDTO.getMaLSP(),
//                    loaiSPDTO.getTenLSP(),
//                    0));
//        }
//
//        return listNode;
//    }
}
