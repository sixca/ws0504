package com.kbstar.dto;

import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class ItemSearch {
   private String name;
   private Integer priceMin;
   private Integer priceMax;
}