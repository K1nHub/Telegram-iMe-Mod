package org.web3j.utils;
/* loaded from: classes6.dex */
public class Strings {
    public static String zeros(int i) {
        return repeat('0', i);
    }

    public static String repeat(char c, int i) {
        return new String(new char[i]).replace("\u0000", String.valueOf(c));
    }

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }
}
