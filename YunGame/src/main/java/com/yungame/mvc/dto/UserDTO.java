package com.yungame.mvc.dto;

import lombok.Data;

@Data
public class UserDTO {

    private String userId;
	private String userName;
	private String password;
	private String regDate;
	private String updDate;
	private String userType;
	private String useYn;

}
