package hgksoft.acquy.dto;

import java.util.List;

/**
 *
 * @author HNTIN
 */
public class TreeLoaiSPDTO {
    private String maLoaiSanPham;
    private String tenLoaiSanPham;
    private String maLoaiCha;
    private String mucLoaiSanPham;
    List<TreeLoaiSPDTO> listOfChild;

    public String getMaLoaiSanPham() {
        return maLoaiSanPham;
    }

    public void setMaLoaiSanPham(String maLoaiSanPham) {
        this.maLoaiSanPham = maLoaiSanPham;
    }

    public String getTenLoaiSanPham() {
        return tenLoaiSanPham;
    }

    public void setTenLoaiSanPham(String tenLoaiSanPham) {
        this.tenLoaiSanPham = tenLoaiSanPham;
    }

    public String getMaLoaiCha() {
        return maLoaiCha;
    }

    public void setMaLoaiCha(String maLoaiCha) {
        this.maLoaiCha = maLoaiCha;
    }

    public String getMucLoaiSanPham() {
        return mucLoaiSanPham;
    }

    public void setMucLoaiSanPham(String mucLoaiSanPham) {
        this.mucLoaiSanPham = mucLoaiSanPham;
    }

    public List<TreeLoaiSPDTO> getListOfChild() {
        return listOfChild;
    }

    public void setListOfChild(List<TreeLoaiSPDTO> listOfChild) {
        this.listOfChild = listOfChild;
    }
    
    
}
