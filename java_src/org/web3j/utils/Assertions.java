package org.web3j.utils;
/* loaded from: classes6.dex */
public class Assertions {
    public static void verifyPrecondition(boolean z, String str) {
        if (!z) {
            throw new RuntimeException(str);
        }
    }
}
