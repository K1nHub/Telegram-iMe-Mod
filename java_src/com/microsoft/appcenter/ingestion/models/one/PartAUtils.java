package com.microsoft.appcenter.ingestion.models.one;

import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class PartAUtils {
    static {
        Pattern.compile("^[a-zA-Z0-9]((\\.(?!(\\.|$)))|[_a-zA-Z0-9]){3,99}$");
    }

    public static String getTargetKey(String targetToken) {
        return targetToken.split("-")[0];
    }
}
