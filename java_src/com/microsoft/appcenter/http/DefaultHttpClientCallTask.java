package com.microsoft.appcenter.http;

import android.net.TrafficStats;
import android.os.AsyncTask;
import com.google.android.exoplayer2.source.rtsp.RtspHeaders;
import com.microsoft.appcenter.http.HttpClient;
import com.microsoft.appcenter.utils.AppCenterLog;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class DefaultHttpClientCallTask extends AsyncTask<Void, Void, Object> {
    private final HttpClient.CallTemplate mCallTemplate;
    private final boolean mCompressionEnabled;
    private final Map<String, String> mHeaders;
    private final String mMethod;
    private final ServiceCallback mServiceCallback;
    private final Tracker mTracker;
    private final String mUrl;
    private static final Pattern TOKEN_REGEX_URL_ENCODED = Pattern.compile("token=[^&]+");
    private static final Pattern TOKEN_REGEX_JSON = Pattern.compile("token\":\"[^\"]+\"");
    private static final Pattern REDIRECT_URI_REGEX_JSON = Pattern.compile("redirect_uri\":\"[^\"]+\"");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public interface Tracker {
        void onFinish(DefaultHttpClientCallTask task);

        void onStart(DefaultHttpClientCallTask task);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultHttpClientCallTask(String url, String method, Map<String, String> headers, HttpClient.CallTemplate callTemplate, ServiceCallback serviceCallback, Tracker tracker, boolean compressionEnabled) {
        this.mUrl = url;
        this.mMethod = method;
        this.mHeaders = headers;
        this.mCallTemplate = callTemplate;
        this.mServiceCallback = serviceCallback;
        this.mTracker = tracker;
        this.mCompressionEnabled = compressionEnabled;
    }

    private static InputStream getInputStream(HttpsURLConnection httpsURLConnection) throws IOException {
        int responseCode = httpsURLConnection.getResponseCode();
        if (responseCode >= 200 && responseCode < 400) {
            return httpsURLConnection.getInputStream();
        }
        return httpsURLConnection.getErrorStream();
    }

    private void writePayload(OutputStream out, byte[] payload) throws IOException {
        for (int i = 0; i < payload.length; i += 1024) {
            out.write(payload, i, Math.min(payload.length - i, 1024));
            if (isCancelled()) {
                return;
            }
        }
    }

    private String readResponse(HttpsURLConnection httpsURLConnection) throws IOException {
        StringBuilder sb = new StringBuilder(Math.max(httpsURLConnection.getContentLength(), 16));
        InputStream inputStream = getInputStream(httpsURLConnection);
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
            char[] cArr = new char[1024];
            do {
                int read = inputStreamReader.read(cArr);
                if (read <= 0) {
                    break;
                }
                sb.append(cArr, 0, read);
            } while (!isCancelled());
            return sb.toString();
        } finally {
            inputStream.close();
        }
    }

    private HttpResponse doHttpCall() throws Exception {
        String str;
        byte[] bArr;
        String replaceAll;
        HttpClient.CallTemplate callTemplate;
        URL url = new URL(this.mUrl);
        HttpsURLConnection createHttpsConnection = HttpUtils.createHttpsConnection(url);
        try {
            createHttpsConnection.setRequestMethod(this.mMethod);
            boolean z = false;
            if (!this.mMethod.equals("POST") || (callTemplate = this.mCallTemplate) == null) {
                str = null;
                bArr = null;
            } else {
                str = callTemplate.buildRequestBody();
                bArr = str.getBytes("UTF-8");
                if (this.mCompressionEnabled && bArr.length >= 1400) {
                    z = true;
                }
                if (!this.mHeaders.containsKey(RtspHeaders.CONTENT_TYPE)) {
                    this.mHeaders.put(RtspHeaders.CONTENT_TYPE, "application/json");
                }
            }
            if (z) {
                this.mHeaders.put(RtspHeaders.CONTENT_ENCODING, "gzip");
            }
            for (Map.Entry<String, String> entry : this.mHeaders.entrySet()) {
                createHttpsConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
            if (isCancelled()) {
                return null;
            }
            HttpClient.CallTemplate callTemplate2 = this.mCallTemplate;
            if (callTemplate2 != null) {
                callTemplate2.onBeforeCalling(url, this.mHeaders);
            }
            if (bArr != null) {
                if (AppCenterLog.getLogLevel() <= 2) {
                    if (str.length() < 4096) {
                        str = TOKEN_REGEX_URL_ENCODED.matcher(str).replaceAll("token=***");
                        if ("application/json".equals(this.mHeaders.get(RtspHeaders.CONTENT_TYPE))) {
                            str = new JSONObject(str).toString(2);
                        }
                    }
                    AppCenterLog.verbose("AppCenter", str);
                }
                if (z) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    gZIPOutputStream.write(bArr);
                    gZIPOutputStream.close();
                    bArr = byteArrayOutputStream.toByteArray();
                }
                createHttpsConnection.setDoOutput(true);
                createHttpsConnection.setFixedLengthStreamingMode(bArr.length);
                OutputStream outputStream = createHttpsConnection.getOutputStream();
                writePayload(outputStream, bArr);
                outputStream.close();
            }
            if (isCancelled()) {
                return null;
            }
            int responseCode = createHttpsConnection.getResponseCode();
            String readResponse = readResponse(createHttpsConnection);
            if (AppCenterLog.getLogLevel() <= 2) {
                String headerField = createHttpsConnection.getHeaderField(RtspHeaders.CONTENT_TYPE);
                if (headerField != null && !headerField.startsWith("text/") && !headerField.startsWith("application/")) {
                    replaceAll = "<binary>";
                    AppCenterLog.verbose("AppCenter", "HTTP response status=" + responseCode + " payload=" + replaceAll);
                }
                replaceAll = REDIRECT_URI_REGEX_JSON.matcher(TOKEN_REGEX_JSON.matcher(readResponse).replaceAll("token\":\"***\"")).replaceAll("redirect_uri\":\"***\"");
                AppCenterLog.verbose("AppCenter", "HTTP response status=" + responseCode + " payload=" + replaceAll);
            }
            HashMap hashMap = new HashMap();
            for (Map.Entry entry2 : createHttpsConnection.getHeaderFields().entrySet()) {
                hashMap.put((String) entry2.getKey(), (String) ((List) entry2.getValue()).iterator().next());
            }
            HttpResponse httpResponse = new HttpResponse(responseCode, readResponse, hashMap);
            if (responseCode < 200 || responseCode >= 300) {
                throw new HttpException(httpResponse);
            }
            return httpResponse;
        } finally {
            createHttpsConnection.disconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Object doInBackground(Void... params) {
        TrafficStats.setThreadStatsTag(-667034599);
        try {
            return doHttpCall();
        } catch (Exception e) {
            return e;
        } finally {
            TrafficStats.clearThreadStatsTag();
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        this.mTracker.onStart(this);
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(Object result) {
        this.mTracker.onFinish(this);
        if (result instanceof Exception) {
            this.mServiceCallback.onCallFailed((Exception) result);
            return;
        }
        this.mServiceCallback.onCallSucceeded((HttpResponse) result);
    }

    @Override // android.os.AsyncTask
    protected void onCancelled(Object result) {
        if ((result instanceof HttpResponse) || (result instanceof HttpException)) {
            onPostExecute(result);
        } else {
            this.mTracker.onFinish(this);
        }
    }
}
