package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
/* loaded from: classes.dex */
public final class zzgb implements zzfy {
    private final Proxy zzvr;

    public zzgb() {
        this(null);
    }

    public zzgb(Proxy proxy) {
        this.zzvr = proxy;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzfy
    public final HttpURLConnection zza(URL url) throws IOException {
        Proxy proxy = this.zzvr;
        return (HttpURLConnection) (proxy == null ? url.openConnection() : url.openConnection(proxy));
    }
}
