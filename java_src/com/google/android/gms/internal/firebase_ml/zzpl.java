package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
/* loaded from: classes.dex */
public final class zzpl {
    private final URL url;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzpl(String str) throws MalformedURLException {
        this.url = new URL(str);
    }

    public final URLConnection openConnection() throws IOException {
        return this.url.openConnection();
    }
}
