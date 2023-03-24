package com.google.android.gms.internal.mlkit_common;

import java.lang.reflect.Type;
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
public final class zzfm {
    public static final zzfm zza;
    private static final zzfm zzaa;
    private static final zzfm zzab;
    private static final zzfm zzac;
    private static final zzfm zzad;
    private static final zzfm zzae;
    private static final zzfm zzaf;
    private static final zzfm zzag;
    private static final zzfm zzah;
    private static final zzfm zzai;
    private static final zzfm zzaj;
    private static final zzfm zzak;
    private static final zzfm zzal;
    private static final zzfm zzam;
    private static final zzfm zzan;
    private static final zzfm zzao;
    private static final zzfm zzap;
    private static final zzfm zzaq;
    private static final zzfm zzar;
    private static final zzfm zzas;
    private static final zzfm zzat;
    private static final zzfm zzau;
    private static final zzfm zzav;
    private static final zzfm zzaw;
    private static final zzfm zzax;
    private static final zzfm zzay;
    public static final zzfm zzb;
    private static final zzfm[] zzbe;
    private static final Type[] zzbf;
    private static final /* synthetic */ zzfm[] zzbg;
    private static final zzfm zzc;
    private static final zzfm zzd;
    private static final zzfm zze;
    private static final zzfm zzf;
    private static final zzfm zzg;
    private static final zzfm zzh;
    private static final zzfm zzi;
    private static final zzfm zzj;
    private static final zzfm zzk;
    private static final zzfm zzl;
    private static final zzfm zzm;
    private static final zzfm zzn;
    private static final zzfm zzo;
    private static final zzfm zzp;
    private static final zzfm zzq;
    private static final zzfm zzr;
    private static final zzfm zzs;
    private static final zzfm zzt;
    private static final zzfm zzu;
    private static final zzfm zzv;
    private static final zzfm zzw;
    private static final zzfm zzx;
    private static final zzfm zzy;
    private static final zzfm zzz;
    private final zzgd zzaz;
    private final int zzba;
    private final zzfo zzbb;
    private final Class<?> zzbc;
    private final boolean zzbd;

    public static zzfm[] values() {
        return (zzfm[]) zzbg.clone();
    }

    private zzfm(String str, int i, int i2, zzfo zzfoVar, zzgd zzgdVar) {
        int i3;
        this.zzba = i2;
        this.zzbb = zzfoVar;
        this.zzaz = zzgdVar;
        int i4 = zzfp.zza[zzfoVar.ordinal()];
        boolean z = true;
        if (i4 == 1) {
            this.zzbc = zzgdVar.zza();
        } else if (i4 == 2) {
            this.zzbc = zzgdVar.zza();
        } else {
            this.zzbc = null;
        }
        this.zzbd = (zzfoVar != zzfo.SCALAR || (i3 = zzfp.zzb[zzgdVar.ordinal()]) == 1 || i3 == 2 || i3 == 3) ? false : z;
    }

    public final int zza() {
        return this.zzba;
    }

    static {
        zzfo zzfoVar = zzfo.SCALAR;
        zzgd zzgdVar = zzgd.zze;
        zzfm zzfmVar = new zzfm("DOUBLE", 0, 0, zzfoVar, zzgdVar);
        zzc = zzfmVar;
        zzgd zzgdVar2 = zzgd.zzd;
        zzfm zzfmVar2 = new zzfm("FLOAT", 1, 1, zzfoVar, zzgdVar2);
        zzd = zzfmVar2;
        zzgd zzgdVar3 = zzgd.zzc;
        zzfm zzfmVar3 = new zzfm("INT64", 2, 2, zzfoVar, zzgdVar3);
        zze = zzfmVar3;
        zzfm zzfmVar4 = new zzfm("UINT64", 3, 3, zzfoVar, zzgdVar3);
        zzf = zzfmVar4;
        zzgd zzgdVar4 = zzgd.zzb;
        zzfm zzfmVar5 = new zzfm("INT32", 4, 4, zzfoVar, zzgdVar4);
        zzg = zzfmVar5;
        zzfm zzfmVar6 = new zzfm("FIXED64", 5, 5, zzfoVar, zzgdVar3);
        zzh = zzfmVar6;
        zzfm zzfmVar7 = new zzfm("FIXED32", 6, 6, zzfoVar, zzgdVar4);
        zzi = zzfmVar7;
        zzgd zzgdVar5 = zzgd.zzf;
        zzfm zzfmVar8 = new zzfm("BOOL", 7, 7, zzfoVar, zzgdVar5);
        zzj = zzfmVar8;
        zzgd zzgdVar6 = zzgd.zzg;
        zzfm zzfmVar9 = new zzfm("STRING", 8, 8, zzfoVar, zzgdVar6);
        zzk = zzfmVar9;
        zzgd zzgdVar7 = zzgd.zzj;
        zzfm zzfmVar10 = new zzfm("MESSAGE", 9, 9, zzfoVar, zzgdVar7);
        zzl = zzfmVar10;
        zzgd zzgdVar8 = zzgd.zzh;
        zzfm zzfmVar11 = new zzfm("BYTES", 10, 10, zzfoVar, zzgdVar8);
        zzm = zzfmVar11;
        zzfm zzfmVar12 = new zzfm("UINT32", 11, 11, zzfoVar, zzgdVar4);
        zzn = zzfmVar12;
        zzgd zzgdVar9 = zzgd.zzi;
        zzfm zzfmVar13 = new zzfm("ENUM", 12, 12, zzfoVar, zzgdVar9);
        zzo = zzfmVar13;
        zzfm zzfmVar14 = new zzfm("SFIXED32", 13, 13, zzfoVar, zzgdVar4);
        zzp = zzfmVar14;
        zzfm zzfmVar15 = new zzfm("SFIXED64", 14, 14, zzfoVar, zzgdVar3);
        zzq = zzfmVar15;
        zzfm zzfmVar16 = new zzfm("SINT32", 15, 15, zzfoVar, zzgdVar4);
        zzr = zzfmVar16;
        zzfm zzfmVar17 = new zzfm("SINT64", 16, 16, zzfoVar, zzgdVar3);
        zzs = zzfmVar17;
        zzfm zzfmVar18 = new zzfm("GROUP", 17, 17, zzfoVar, zzgdVar7);
        zzt = zzfmVar18;
        zzfo zzfoVar2 = zzfo.VECTOR;
        zzfm zzfmVar19 = new zzfm("DOUBLE_LIST", 18, 18, zzfoVar2, zzgdVar);
        zzu = zzfmVar19;
        zzfm zzfmVar20 = new zzfm("FLOAT_LIST", 19, 19, zzfoVar2, zzgdVar2);
        zzv = zzfmVar20;
        zzfm zzfmVar21 = new zzfm("INT64_LIST", 20, 20, zzfoVar2, zzgdVar3);
        zzw = zzfmVar21;
        zzfm zzfmVar22 = new zzfm("UINT64_LIST", 21, 21, zzfoVar2, zzgdVar3);
        zzx = zzfmVar22;
        zzfm zzfmVar23 = new zzfm("INT32_LIST", 22, 22, zzfoVar2, zzgdVar4);
        zzy = zzfmVar23;
        zzfm zzfmVar24 = new zzfm("FIXED64_LIST", 23, 23, zzfoVar2, zzgdVar3);
        zzz = zzfmVar24;
        zzfm zzfmVar25 = new zzfm("FIXED32_LIST", 24, 24, zzfoVar2, zzgdVar4);
        zzaa = zzfmVar25;
        zzfm zzfmVar26 = new zzfm("BOOL_LIST", 25, 25, zzfoVar2, zzgdVar5);
        zzab = zzfmVar26;
        zzfm zzfmVar27 = new zzfm("STRING_LIST", 26, 26, zzfoVar2, zzgdVar6);
        zzac = zzfmVar27;
        zzfm zzfmVar28 = new zzfm("MESSAGE_LIST", 27, 27, zzfoVar2, zzgdVar7);
        zzad = zzfmVar28;
        zzfm zzfmVar29 = new zzfm("BYTES_LIST", 28, 28, zzfoVar2, zzgdVar8);
        zzae = zzfmVar29;
        zzfm zzfmVar30 = new zzfm("UINT32_LIST", 29, 29, zzfoVar2, zzgdVar4);
        zzaf = zzfmVar30;
        zzfm zzfmVar31 = new zzfm("ENUM_LIST", 30, 30, zzfoVar2, zzgdVar9);
        zzag = zzfmVar31;
        zzfm zzfmVar32 = new zzfm("SFIXED32_LIST", 31, 31, zzfoVar2, zzgdVar4);
        zzah = zzfmVar32;
        zzfm zzfmVar33 = new zzfm("SFIXED64_LIST", 32, 32, zzfoVar2, zzgdVar3);
        zzai = zzfmVar33;
        zzfm zzfmVar34 = new zzfm("SINT32_LIST", 33, 33, zzfoVar2, zzgdVar4);
        zzaj = zzfmVar34;
        zzfm zzfmVar35 = new zzfm("SINT64_LIST", 34, 34, zzfoVar2, zzgdVar3);
        zzak = zzfmVar35;
        zzfo zzfoVar3 = zzfo.PACKED_VECTOR;
        zzfm zzfmVar36 = new zzfm("DOUBLE_LIST_PACKED", 35, 35, zzfoVar3, zzgdVar);
        zza = zzfmVar36;
        zzfm zzfmVar37 = new zzfm("FLOAT_LIST_PACKED", 36, 36, zzfoVar3, zzgdVar2);
        zzal = zzfmVar37;
        zzfm zzfmVar38 = new zzfm("INT64_LIST_PACKED", 37, 37, zzfoVar3, zzgdVar3);
        zzam = zzfmVar38;
        zzfm zzfmVar39 = new zzfm("UINT64_LIST_PACKED", 38, 38, zzfoVar3, zzgdVar3);
        zzan = zzfmVar39;
        zzfm zzfmVar40 = new zzfm("INT32_LIST_PACKED", 39, 39, zzfoVar3, zzgdVar4);
        zzao = zzfmVar40;
        zzfm zzfmVar41 = new zzfm("FIXED64_LIST_PACKED", 40, 40, zzfoVar3, zzgdVar3);
        zzap = zzfmVar41;
        zzfm zzfmVar42 = new zzfm("FIXED32_LIST_PACKED", 41, 41, zzfoVar3, zzgdVar4);
        zzaq = zzfmVar42;
        zzfm zzfmVar43 = new zzfm("BOOL_LIST_PACKED", 42, 42, zzfoVar3, zzgdVar5);
        zzar = zzfmVar43;
        zzfm zzfmVar44 = new zzfm("UINT32_LIST_PACKED", 43, 43, zzfoVar3, zzgdVar4);
        zzas = zzfmVar44;
        zzfm zzfmVar45 = new zzfm("ENUM_LIST_PACKED", 44, 44, zzfoVar3, zzgdVar9);
        zzat = zzfmVar45;
        zzfm zzfmVar46 = new zzfm("SFIXED32_LIST_PACKED", 45, 45, zzfoVar3, zzgdVar4);
        zzau = zzfmVar46;
        zzfm zzfmVar47 = new zzfm("SFIXED64_LIST_PACKED", 46, 46, zzfoVar3, zzgdVar3);
        zzav = zzfmVar47;
        zzfm zzfmVar48 = new zzfm("SINT32_LIST_PACKED", 47, 47, zzfoVar3, zzgdVar4);
        zzaw = zzfmVar48;
        zzfm zzfmVar49 = new zzfm("SINT64_LIST_PACKED", 48, 48, zzfoVar3, zzgdVar3);
        zzb = zzfmVar49;
        zzfm zzfmVar50 = new zzfm("GROUP_LIST", 49, 49, zzfoVar2, zzgdVar7);
        zzax = zzfmVar50;
        zzfm zzfmVar51 = new zzfm("MAP", 50, 50, zzfo.MAP, zzgd.zza);
        zzay = zzfmVar51;
        zzbg = new zzfm[]{zzfmVar, zzfmVar2, zzfmVar3, zzfmVar4, zzfmVar5, zzfmVar6, zzfmVar7, zzfmVar8, zzfmVar9, zzfmVar10, zzfmVar11, zzfmVar12, zzfmVar13, zzfmVar14, zzfmVar15, zzfmVar16, zzfmVar17, zzfmVar18, zzfmVar19, zzfmVar20, zzfmVar21, zzfmVar22, zzfmVar23, zzfmVar24, zzfmVar25, zzfmVar26, zzfmVar27, zzfmVar28, zzfmVar29, zzfmVar30, zzfmVar31, zzfmVar32, zzfmVar33, zzfmVar34, zzfmVar35, zzfmVar36, zzfmVar37, zzfmVar38, zzfmVar39, zzfmVar40, zzfmVar41, zzfmVar42, zzfmVar43, zzfmVar44, zzfmVar45, zzfmVar46, zzfmVar47, zzfmVar48, zzfmVar49, zzfmVar50, zzfmVar51};
        zzbf = new Type[0];
        zzfm[] values = values();
        zzbe = new zzfm[values.length];
        for (zzfm zzfmVar52 : values) {
            zzbe[zzfmVar52.zzba] = zzfmVar52;
        }
    }
}
