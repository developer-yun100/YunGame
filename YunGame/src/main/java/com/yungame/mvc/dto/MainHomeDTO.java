package com.yungame.mvc.dto;

import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class MainHomeDTO {
    private String userId;
    private String userName;

    private String seq;
    private String title;
    private String content;
    private String hit;
    private String regDate;
    private String updDate;
    private String boardType;
    private int pageNumber;
    private String startDate;
    private String endDate;

    private int totalCnt;
    private int pageGroupSize;
    private Map<String, Object> paging;
    private List<MainHomeDTO> boardList;

}
