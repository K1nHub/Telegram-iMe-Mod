package com.google.android.gms.internal.firebase_ml;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
/* loaded from: classes.dex */
public final class zzii {
    private static final zzih zzaaa = new zzik("-_.*", true);
    private static final zzih zzaab = new zzik("-_.!~*'()@:$&,;=", false);
    private static final zzih zzaac = new zzik("-_.!~*'()@:$&,;=+/?", false);
    private static final zzih zzaad = new zzik("-_.!~*'():$&,;=", false);
    private static final zzih zzaae = new zzik("-_.!~*'()@:$,;/?:", false);

    public static String zzao(String str) {
        return zzaaa.zzan(str);
    }

    public static String zzap(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static String zzaq(String str) {
        return zzaab.zzan(str);
    }

    public static String zzar(String str) {
        return zzaac.zzan(str);
    }

    public static String zzas(String str) {
        return zzaad.zzan(str);
    }

    public static String zzat(String str) {
        return zzaae.zzan(str);
    }
}
