package com.google.android.gms.internal.firebase_ml;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzbxz uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class zzyd {
    public static final zzyd zzbxx;
    public static final zzyd zzbxy;
    public static final zzyd zzbxz;
    public static final zzyd zzbya;
    public static final zzyd zzbyb;
    public static final zzyd zzbyc;
    public static final zzyd zzbyd;
    public static final zzyd zzbye;
    public static final zzyd zzbyf;
    public static final zzyd zzbyg;
    public static final zzyd zzbyh;
    public static final zzyd zzbyi;
    public static final zzyd zzbyj;
    public static final zzyd zzbyk;
    public static final zzyd zzbyl;
    public static final zzyd zzbym;
    public static final zzyd zzbyn;
    public static final zzyd zzbyo;
    private static final /* synthetic */ zzyd[] zzbyr;
    private final zzyg zzbyp;
    private final int zzbyq;

    public static zzyd[] values() {
        return (zzyd[]) zzbyr.clone();
    }

    private zzyd(String str, int i, zzyg zzygVar, int i2) {
        this.zzbyp = zzygVar;
        this.zzbyq = i2;
    }

    public final zzyg zztw() {
        return this.zzbyp;
    }

    public final int zztx() {
        return this.zzbyq;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzyd(String str, int i, zzyg zzygVar, int i2, zzya zzyaVar) {
        this(str, i, zzygVar, i2);
    }

    static {
        zzyd zzydVar = new zzyd("DOUBLE", 0, zzyg.DOUBLE, 1);
        zzbxx = zzydVar;
        zzyd zzydVar2 = new zzyd("FLOAT", 1, zzyg.FLOAT, 5);
        zzbxy = zzydVar2;
        zzyg zzygVar = zzyg.LONG;
        zzyd zzydVar3 = new zzyd("INT64", 2, zzygVar, 0);
        zzbxz = zzydVar3;
        zzyd zzydVar4 = new zzyd("UINT64", 3, zzygVar, 0);
        zzbya = zzydVar4;
        zzyg zzygVar2 = zzyg.INT;
        zzyd zzydVar5 = new zzyd("INT32", 4, zzygVar2, 0);
        zzbyb = zzydVar5;
        zzyd zzydVar6 = new zzyd("FIXED64", 5, zzygVar, 1);
        zzbyc = zzydVar6;
        zzyd zzydVar7 = new zzyd("FIXED32", 6, zzygVar2, 5);
        zzbyd = zzydVar7;
        zzyd zzydVar8 = new zzyd("BOOL", 7, zzyg.BOOLEAN, 0);
        zzbye = zzydVar8;
        final zzyg zzygVar3 = zzyg.STRING;
        zzyd zzydVar9 = new zzyd("STRING", 8, zzygVar3, 2) { // from class: com.google.android.gms.internal.firebase_ml.zzyc
        };
        zzbyf = zzydVar9;
        final zzyg zzygVar4 = zzyg.MESSAGE;
        zzyd zzydVar10 = new zzyd("GROUP", 9, zzygVar4, 3) { // from class: com.google.android.gms.internal.firebase_ml.zzyf
        };
        zzbyg = zzydVar10;
        zzyd zzydVar11 = new zzyd("MESSAGE", 10, zzygVar4, 2) { // from class: com.google.android.gms.internal.firebase_ml.zzye
        };
        zzbyh = zzydVar11;
        final zzyg zzygVar5 = zzyg.BYTE_STRING;
        zzyd zzydVar12 = new zzyd("BYTES", 11, zzygVar5, 2) { // from class: com.google.android.gms.internal.firebase_ml.zzyh
        };
        zzbyi = zzydVar12;
        zzyd zzydVar13 = new zzyd("UINT32", 12, zzygVar2, 0);
        zzbyj = zzydVar13;
        zzyd zzydVar14 = new zzyd("ENUM", 13, zzyg.ENUM, 0);
        zzbyk = zzydVar14;
        zzyd zzydVar15 = new zzyd("SFIXED32", 14, zzygVar2, 5);
        zzbyl = zzydVar15;
        zzyd zzydVar16 = new zzyd("SFIXED64", 15, zzygVar, 1);
        zzbym = zzydVar16;
        zzyd zzydVar17 = new zzyd("SINT32", 16, zzygVar2, 0);
        zzbyn = zzydVar17;
        zzyd zzydVar18 = new zzyd("SINT64", 17, zzygVar, 0);
        zzbyo = zzydVar18;
        zzbyr = new zzyd[]{zzydVar, zzydVar2, zzydVar3, zzydVar4, zzydVar5, zzydVar6, zzydVar7, zzydVar8, zzydVar9, zzydVar10, zzydVar11, zzydVar12, zzydVar13, zzydVar14, zzydVar15, zzydVar16, zzydVar17, zzydVar18};
    }
}
