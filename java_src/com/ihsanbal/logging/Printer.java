package com.ihsanbal.logging;

import com.ihsanbal.logging.LoggingInterceptor;
import java.io.IOException;
import java.util.List;
import okhttp3.Request;
import okhttp3.RequestBody;
import okio.Buffer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
class Printer {
    private static final String DOUBLE_SEPARATOR;
    private static final String LINE_SEPARATOR;
    private static final String[] OMITTED_REQUEST;
    private static final String[] OMITTED_RESPONSE;
    private static final String OOM_OMITTED;

    static {
        String property = System.getProperty("line.separator");
        LINE_SEPARATOR = property;
        DOUBLE_SEPARATOR = property + property;
        OMITTED_RESPONSE = new String[]{property, "Omitted response body"};
        OMITTED_REQUEST = new String[]{property, "Omitted request body"};
        OOM_OMITTED = property + "Output omitted because of Object size.";
    }

    private static boolean isEmpty(String str) {
        return TextUtils.isEmpty(str) || "\n".equals(str) || "\t".equals(str) || TextUtils.isEmpty(str.trim());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void printJsonRequest(LoggingInterceptor.Builder builder, Request request) {
        StringBuilder sb = new StringBuilder();
        String str = LINE_SEPARATOR;
        sb.append(str);
        sb.append("Body:");
        sb.append(str);
        sb.append(bodyToString(request));
        String sb2 = sb.toString();
        String tag = builder.getTag(true);
        if (builder.getLogger() == null) {
            C1250I.log(builder.getType(), tag, "┌────── Request ────────────────────────────────────────────────────────────────────────", builder.isLogHackEnable());
        }
        int type = builder.getType();
        logLines(type, tag, new String[]{"URL: " + request.url()}, builder.getLogger(), false, builder.isLogHackEnable());
        logLines(builder.getType(), tag, getRequest(request, builder.getLevel()), builder.getLogger(), true, builder.isLogHackEnable());
        if (builder.getLevel() == Level.BASIC || builder.getLevel() == Level.BODY) {
            logLines(builder.getType(), tag, sb2.split(str), builder.getLogger(), true, builder.isLogHackEnable());
        }
        if (builder.getLogger() == null) {
            C1250I.log(builder.getType(), tag, "└───────────────────────────────────────────────────────────────────────────────────────", builder.isLogHackEnable());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void printJsonResponse(LoggingInterceptor.Builder builder, long j, boolean z, int i, String str, String str2, List<String> list, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        String str5 = LINE_SEPARATOR;
        sb.append(str5);
        sb.append("Body:");
        sb.append(str5);
        sb.append(getJsonString(str2));
        String sb2 = sb.toString();
        String tag = builder.getTag(false);
        String[] strArr = {"URL: " + str4, "\n"};
        String[] response = getResponse(str, j, i, z, builder.getLevel(), list, str3);
        if (builder.getLogger() == null) {
            C1250I.log(builder.getType(), tag, "┌────── Response ───────────────────────────────────────────────────────────────────────", builder.isLogHackEnable());
        }
        logLines(builder.getType(), tag, strArr, builder.getLogger(), true, builder.isLogHackEnable());
        logLines(builder.getType(), tag, response, builder.getLogger(), true, builder.isLogHackEnable());
        if (builder.getLevel() == Level.BASIC || builder.getLevel() == Level.BODY) {
            logLines(builder.getType(), tag, sb2.split(str5), builder.getLogger(), true, builder.isLogHackEnable());
        }
        if (builder.getLogger() == null) {
            C1250I.log(builder.getType(), tag, "└───────────────────────────────────────────────────────────────────────────────────────", builder.isLogHackEnable());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void printFileRequest(LoggingInterceptor.Builder builder, Request request) {
        String tag = builder.getTag(true);
        if (builder.getLogger() == null) {
            C1250I.log(builder.getType(), tag, "┌────── Request ────────────────────────────────────────────────────────────────────────", builder.isLogHackEnable());
        }
        int type = builder.getType();
        logLines(type, tag, new String[]{"URL: " + request.url()}, builder.getLogger(), false, builder.isLogHackEnable());
        logLines(builder.getType(), tag, getRequest(request, builder.getLevel()), builder.getLogger(), true, builder.isLogHackEnable());
        if (builder.getLevel() == Level.BASIC || builder.getLevel() == Level.BODY) {
            logLines(builder.getType(), tag, OMITTED_REQUEST, builder.getLogger(), true, builder.isLogHackEnable());
        }
        if (builder.getLogger() == null) {
            C1250I.log(builder.getType(), tag, "└───────────────────────────────────────────────────────────────────────────────────────", builder.isLogHackEnable());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void printFileResponse(LoggingInterceptor.Builder builder, long j, boolean z, int i, String str, List<String> list, String str2) {
        String tag = builder.getTag(false);
        if (builder.getLogger() == null) {
            C1250I.log(builder.getType(), tag, "┌────── Response ───────────────────────────────────────────────────────────────────────", builder.isLogHackEnable());
        }
        logLines(builder.getType(), tag, getResponse(str, j, i, z, builder.getLevel(), list, str2), builder.getLogger(), true, builder.isLogHackEnable());
        logLines(builder.getType(), tag, OMITTED_RESPONSE, builder.getLogger(), true, builder.isLogHackEnable());
        if (builder.getLogger() == null) {
            C1250I.log(builder.getType(), tag, "└───────────────────────────────────────────────────────────────────────────────────────", builder.isLogHackEnable());
        }
    }

    private static String[] getRequest(Request request, Level level) {
        String headers = request.headers().toString();
        boolean z = level == Level.HEADERS || level == Level.BASIC;
        StringBuilder sb = new StringBuilder();
        sb.append("Method: @");
        sb.append(request.method());
        sb.append(DOUBLE_SEPARATOR);
        String str = "";
        if (!isEmpty(headers) && z) {
            str = "Headers:" + LINE_SEPARATOR + dotHeaders(headers);
        }
        sb.append(str);
        return sb.toString().split(LINE_SEPARATOR);
    }

    private static String[] getResponse(String str, long j, int i, boolean z, Level level, List<String> list, String str2) {
        String str3;
        boolean z2 = level == Level.HEADERS || level == Level.BASIC;
        String slashSegments = slashSegments(list);
        StringBuilder sb = new StringBuilder();
        String str4 = "";
        if (TextUtils.isEmpty(slashSegments)) {
            str3 = "";
        } else {
            str3 = slashSegments + " - ";
        }
        sb.append(str3);
        sb.append("is success : ");
        sb.append(z);
        sb.append(" - ");
        sb.append("Received in: ");
        sb.append(j);
        sb.append("ms");
        String str5 = DOUBLE_SEPARATOR;
        sb.append(str5);
        sb.append("Status Code: ");
        sb.append(i);
        sb.append(" / ");
        sb.append(str2);
        sb.append(str5);
        if (!isEmpty(str) && z2) {
            str4 = "Headers:" + LINE_SEPARATOR + dotHeaders(str);
        }
        sb.append(str4);
        return sb.toString().split(LINE_SEPARATOR);
    }

    private static String slashSegments(List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (String str : list) {
            sb.append("/");
            sb.append(str);
        }
        return sb.toString();
    }

    private static String dotHeaders(String str) {
        String str2;
        String[] split = str.split(LINE_SEPARATOR);
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (split.length > 1) {
            while (i < split.length) {
                if (i == 0) {
                    str2 = "┌ ";
                } else {
                    str2 = i == split.length - 1 ? "└ " : "├ ";
                }
                sb.append(str2);
                sb.append(split[i]);
                sb.append("\n");
                i++;
            }
        } else {
            int length = split.length;
            while (i < length) {
                String str3 = split[i];
                sb.append("─ ");
                sb.append(str3);
                sb.append("\n");
                i++;
            }
        }
        return sb.toString();
    }

    private static void logLines(int i, String str, String[] strArr, Logger logger, boolean z, boolean z2) {
        for (String str2 : strArr) {
            int length = str2.length();
            int i2 = z ? 110 : length;
            int i3 = 0;
            while (i3 <= length / i2) {
                int i4 = i3 * i2;
                i3++;
                int i5 = i3 * i2;
                if (i5 > str2.length()) {
                    i5 = str2.length();
                }
                if (logger == null) {
                    C1250I.log(i, str, "│ " + str2.substring(i4, i5), z2);
                } else {
                    logger.log(i, str, str2.substring(i4, i5));
                }
            }
        }
    }

    private static String bodyToString(Request request) {
        try {
            Request build = request.newBuilder().build();
            Buffer buffer = new Buffer();
            RequestBody body = build.body();
            if (body == null) {
                return "";
            }
            body.writeTo(buffer);
            return getJsonString(buffer.readUtf8());
        } catch (IOException e) {
            return "{\"err\": \"" + e.getMessage() + "\"}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getJsonString(String str) {
        try {
            if (str.startsWith("{")) {
                str = new JSONObject(str).toString(3);
            } else if (str.startsWith("[")) {
                str = new JSONArray(str).toString(3);
            }
            return str;
        } catch (OutOfMemoryError unused) {
            return OOM_OMITTED;
        } catch (JSONException unused2) {
            return str;
        }
    }
}
