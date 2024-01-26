package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzbtr uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class zzvg {
    public static final zzvg zzbtq;
    public static final zzvg zzbtr;
    public static final zzvg zzbts;
    public static final zzvg zzbtt;
    public static final zzvg zzbtu;
    public static final zzvg zzbtv;
    public static final zzvg zzbtw;
    public static final zzvg zzbtx;
    public static final zzvg zzbty;
    public static final zzvg zzbtz;
    private static final /* synthetic */ zzvg[] zzbud;
    private final Class<?> zzbua;
    private final Class<?> zzbub;
    private final Object zzbuc;

    public static zzvg[] values() {
        return (zzvg[]) zzbud.clone();
    }

    private zzvg(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzbua = cls;
        this.zzbub = cls2;
        this.zzbuc = obj;
    }

    public final Class<?> zzrz() {
        return this.zzbub;
    }

    static {
        zzvg zzvgVar = new zzvg("VOID", 0, Void.class, Void.class, null);
        zzbtq = zzvgVar;
        Class cls = Integer.TYPE;
        zzvg zzvgVar2 = new zzvg("INT", 1, cls, Integer.class, 0);
        zzbtr = zzvgVar2;
        zzvg zzvgVar3 = new zzvg("LONG", 2, Long.TYPE, Long.class, 0L);
        zzbts = zzvgVar3;
        zzvg zzvgVar4 = new zzvg("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
        zzbtt = zzvgVar4;
        zzvg zzvgVar5 = new zzvg("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zzbtu = zzvgVar5;
        zzvg zzvgVar6 = new zzvg("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzbtv = zzvgVar6;
        zzvg zzvgVar7 = new zzvg("STRING", 6, String.class, String.class, "");
        zzbtw = zzvgVar7;
        zzvg zzvgVar8 = new zzvg("BYTE_STRING", 7, zztn.class, zztn.class, zztn.zzbos);
        zzbtx = zzvgVar8;
        zzvg zzvgVar9 = new zzvg("ENUM", 8, cls, Integer.class, null);
        zzbty = zzvgVar9;
        zzvg zzvgVar10 = new zzvg("MESSAGE", 9, Object.class, Object.class, null);
        zzbtz = zzvgVar10;
        zzbud = new zzvg[]{zzvgVar, zzvgVar2, zzvgVar3, zzvgVar4, zzvgVar5, zzvgVar6, zzvgVar7, zzvgVar8, zzvgVar9, zzvgVar10};
    }
}
