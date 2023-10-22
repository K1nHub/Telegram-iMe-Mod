package com.ihsanbal.logging;

import java.io.IOException;
import okhttp3.Request;
/* loaded from: classes4.dex */
public interface BufferListener {
    String getJsonResponse(Request request) throws IOException;
}
