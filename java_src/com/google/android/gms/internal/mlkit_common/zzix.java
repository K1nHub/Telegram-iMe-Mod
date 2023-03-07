package com.google.android.gms.internal.mlkit_common;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzc uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes.dex */
public class zzix {
    public static final zzix zza;
    public static final zzix zzb;
    public static final zzix zzc;
    public static final zzix zzd;
    public static final zzix zze;
    public static final zzix zzf;
    public static final zzix zzg;
    public static final zzix zzh;
    public static final zzix zzi;
    public static final zzix zzj;
    public static final zzix zzk;
    public static final zzix zzl;
    public static final zzix zzm;
    public static final zzix zzn;
    public static final zzix zzo;
    public static final zzix zzp;
    public static final zzix zzq;
    public static final zzix zzr;
    private static final /* synthetic */ zzix[] zzu;
    private final zzja zzs;
    private final int zzt;

    public static zzix[] values() {
        return (zzix[]) zzu.clone();
    }

    private zzix(String str, int i, zzja zzjaVar, int i2) {
        this.zzs = zzjaVar;
        this.zzt = i2;
    }

    public final zzja zza() {
        return this.zzs;
    }

    public final int zzb() {
        return this.zzt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzix(String str, int i, zzja zzjaVar, int i2, zziu zziuVar) {
        this(str, i, zzjaVar, i2);
    }

    static {
        zzix zzixVar = new zzix("DOUBLE", 0, zzja.DOUBLE, 1);
        zza = zzixVar;
        zzix zzixVar2 = new zzix("FLOAT", 1, zzja.FLOAT, 5);
        zzb = zzixVar2;
        zzja zzjaVar = zzja.LONG;
        zzix zzixVar3 = new zzix("INT64", 2, zzjaVar, 0);
        zzc = zzixVar3;
        zzix zzixVar4 = new zzix("UINT64", 3, zzjaVar, 0);
        zzd = zzixVar4;
        zzja zzjaVar2 = zzja.INT;
        zzix zzixVar5 = new zzix("INT32", 4, zzjaVar2, 0);
        zze = zzixVar5;
        zzix zzixVar6 = new zzix("FIXED64", 5, zzjaVar, 1);
        zzf = zzixVar6;
        zzix zzixVar7 = new zzix("FIXED32", 6, zzjaVar2, 5);
        zzg = zzixVar7;
        zzix zzixVar8 = new zzix("BOOL", 7, zzja.BOOLEAN, 0);
        zzh = zzixVar8;
        final zzja zzjaVar3 = zzja.STRING;
        zzix zzixVar9 = new zzix("STRING", 8, zzjaVar3, 2) { // from class: com.google.android.gms.internal.mlkit_common.zziw
        };
        zzi = zzixVar9;
        final zzja zzjaVar4 = zzja.MESSAGE;
        zzix zzixVar10 = new zzix("GROUP", 9, zzjaVar4, 3) { // from class: com.google.android.gms.internal.mlkit_common.zziz
        };
        zzj = zzixVar10;
        zzix zzixVar11 = new zzix("MESSAGE", 10, zzjaVar4, 2) { // from class: com.google.android.gms.internal.mlkit_common.zziy
        };
        zzk = zzixVar11;
        final zzja zzjaVar5 = zzja.BYTE_STRING;
        zzix zzixVar12 = new zzix("BYTES", 11, zzjaVar5, 2) { // from class: com.google.android.gms.internal.mlkit_common.zzjb
        };
        zzl = zzixVar12;
        zzix zzixVar13 = new zzix("UINT32", 12, zzjaVar2, 0);
        zzm = zzixVar13;
        zzix zzixVar14 = new zzix("ENUM", 13, zzja.ENUM, 0);
        zzn = zzixVar14;
        zzix zzixVar15 = new zzix("SFIXED32", 14, zzjaVar2, 5);
        zzo = zzixVar15;
        zzix zzixVar16 = new zzix("SFIXED64", 15, zzjaVar, 1);
        zzp = zzixVar16;
        zzix zzixVar17 = new zzix("SINT32", 16, zzjaVar2, 0);
        zzq = zzixVar17;
        zzix zzixVar18 = new zzix("SINT64", 17, zzjaVar, 0);
        zzr = zzixVar18;
        zzu = new zzix[]{zzixVar, zzixVar2, zzixVar3, zzixVar4, zzixVar5, zzixVar6, zzixVar7, zzixVar8, zzixVar9, zzixVar10, zzixVar11, zzixVar12, zzixVar13, zzixVar14, zzixVar15, zzixVar16, zzixVar17, zzixVar18};
    }
}
