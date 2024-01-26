package com.google.android.gms.internal.firebase_ml;

import android.net.Uri;
/* loaded from: classes.dex */
public final class zzpe {
    private final zzor zzavv;
    private final String zzavy;
    private final Uri zzavz;
    private final String zzawa;

    public zzpe(String str, Uri uri, String str2, zzor zzorVar) {
        this.zzavy = str;
        this.zzavz = uri;
        this.zzawa = str2;
        this.zzavv = zzorVar;
    }

    public final String zzmn() {
        return this.zzavy;
    }

    public final String getModelHash() {
        return this.zzawa;
    }

    public final zzor zzmo() {
        return this.zzavv;
    }
}
