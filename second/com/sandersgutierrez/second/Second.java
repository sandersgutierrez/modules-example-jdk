package com.sandersgutierrez.second;

import com.sandersgutierrez.first.First;

public class Second {
    public String getInfo() {
        return "Second " + getClass().getModule();
    }

    public static void main(String[] args) {
        System.out.println(new Second().getInfo());
        System.out.println(new First().getInfo());
    }
}
