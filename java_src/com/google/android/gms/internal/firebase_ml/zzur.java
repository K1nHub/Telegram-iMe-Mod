package com.google.android.gms.internal.firebase_ml;

import java.lang.reflect.Type;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum zzbqa uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:391)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:320)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class zzur {
    private static final zzur zzbqa;
    private static final zzur zzbqb;
    private static final zzur zzbqc;
    private static final zzur zzbqd;
    private static final zzur zzbqe;
    private static final zzur zzbqf;
    private static final zzur zzbqg;
    private static final zzur zzbqh;
    private static final zzur zzbqi;
    private static final zzur zzbqj;
    private static final zzur zzbqk;
    private static final zzur zzbql;
    private static final zzur zzbqm;
    private static final zzur zzbqn;
    private static final zzur zzbqo;
    private static final zzur zzbqp;
    private static final zzur zzbqq;
    private static final zzur zzbqr;
    private static final zzur zzbqs;
    private static final zzur zzbqt;
    private static final zzur zzbqu;
    private static final zzur zzbqv;
    private static final zzur zzbqw;
    private static final zzur zzbqx;
    private static final zzur zzbqy;
    private static final zzur zzbqz;
    private static final zzur zzbra;
    private static final zzur zzbrb;
    private static final zzur zzbrc;
    private static final zzur zzbrd;
    private static final zzur zzbre;
    private static final zzur zzbrf;
    private static final zzur zzbrg;
    private static final zzur zzbrh;
    private static final zzur zzbri;
    public static final zzur zzbrj;
    private static final zzur zzbrk;
    private static final zzur zzbrl;
    private static final zzur zzbrm;
    private static final zzur zzbrn;
    private static final zzur zzbro;
    private static final zzur zzbrp;
    private static final zzur zzbrq;
    private static final zzur zzbrr;
    private static final zzur zzbrs;
    private static final zzur zzbrt;
    private static final zzur zzbru;
    private static final zzur zzbrv;
    public static final zzur zzbrw;
    private static final zzur zzbrx;
    private static final zzur zzbry;
    private static final zzur[] zzbsd;
    private static final Type[] zzbse;
    private static final /* synthetic */ zzur[] zzbsf;

    /* renamed from: id */
    private final int f236id;
    private final zzvg zzbrz;
    private final zzut zzbsa;
    private final Class<?> zzbsb;
    private final boolean zzbsc;

    public static zzur[] values() {
        return (zzur[]) zzbsf.clone();
    }

    private zzur(String str, int i, int i2, zzut zzutVar, zzvg zzvgVar) {
        int i3;
        this.f236id = i2;
        this.zzbsa = zzutVar;
        this.zzbrz = zzvgVar;
        int i4 = zzuq.zzbpy[zzutVar.ordinal()];
        boolean z = true;
        if (i4 == 1) {
            this.zzbsb = zzvgVar.zzrz();
        } else if (i4 == 2) {
            this.zzbsb = zzvgVar.zzrz();
        } else {
            this.zzbsb = null;
        }
        this.zzbsc = (zzutVar != zzut.SCALAR || (i3 = zzuq.zzbpz[zzvgVar.ordinal()]) == 1 || i3 == 2 || i3 == 3) ? false : z;
    }

    /* renamed from: id */
    public final int m766id() {
        return this.f236id;
    }

    static {
        zzut zzutVar = zzut.SCALAR;
        zzvg zzvgVar = zzvg.zzbtu;
        zzur zzurVar = new zzur("DOUBLE", 0, 0, zzutVar, zzvgVar);
        zzbqa = zzurVar;
        zzvg zzvgVar2 = zzvg.zzbtt;
        zzur zzurVar2 = new zzur("FLOAT", 1, 1, zzutVar, zzvgVar2);
        zzbqb = zzurVar2;
        zzvg zzvgVar3 = zzvg.zzbts;
        zzur zzurVar3 = new zzur("INT64", 2, 2, zzutVar, zzvgVar3);
        zzbqc = zzurVar3;
        zzur zzurVar4 = new zzur("UINT64", 3, 3, zzutVar, zzvgVar3);
        zzbqd = zzurVar4;
        zzvg zzvgVar4 = zzvg.zzbtr;
        zzur zzurVar5 = new zzur("INT32", 4, 4, zzutVar, zzvgVar4);
        zzbqe = zzurVar5;
        zzur zzurVar6 = new zzur("FIXED64", 5, 5, zzutVar, zzvgVar3);
        zzbqf = zzurVar6;
        zzur zzurVar7 = new zzur("FIXED32", 6, 6, zzutVar, zzvgVar4);
        zzbqg = zzurVar7;
        zzvg zzvgVar5 = zzvg.zzbtv;
        zzur zzurVar8 = new zzur("BOOL", 7, 7, zzutVar, zzvgVar5);
        zzbqh = zzurVar8;
        zzvg zzvgVar6 = zzvg.zzbtw;
        zzur zzurVar9 = new zzur("STRING", 8, 8, zzutVar, zzvgVar6);
        zzbqi = zzurVar9;
        zzvg zzvgVar7 = zzvg.zzbtz;
        zzur zzurVar10 = new zzur("MESSAGE", 9, 9, zzutVar, zzvgVar7);
        zzbqj = zzurVar10;
        zzvg zzvgVar8 = zzvg.zzbtx;
        zzur zzurVar11 = new zzur("BYTES", 10, 10, zzutVar, zzvgVar8);
        zzbqk = zzurVar11;
        zzur zzurVar12 = new zzur("UINT32", 11, 11, zzutVar, zzvgVar4);
        zzbql = zzurVar12;
        zzvg zzvgVar9 = zzvg.zzbty;
        zzur zzurVar13 = new zzur("ENUM", 12, 12, zzutVar, zzvgVar9);
        zzbqm = zzurVar13;
        zzur zzurVar14 = new zzur("SFIXED32", 13, 13, zzutVar, zzvgVar4);
        zzbqn = zzurVar14;
        zzur zzurVar15 = new zzur("SFIXED64", 14, 14, zzutVar, zzvgVar3);
        zzbqo = zzurVar15;
        zzur zzurVar16 = new zzur("SINT32", 15, 15, zzutVar, zzvgVar4);
        zzbqp = zzurVar16;
        zzur zzurVar17 = new zzur("SINT64", 16, 16, zzutVar, zzvgVar3);
        zzbqq = zzurVar17;
        zzur zzurVar18 = new zzur("GROUP", 17, 17, zzutVar, zzvgVar7);
        zzbqr = zzurVar18;
        zzut zzutVar2 = zzut.VECTOR;
        zzur zzurVar19 = new zzur("DOUBLE_LIST", 18, 18, zzutVar2, zzvgVar);
        zzbqs = zzurVar19;
        zzur zzurVar20 = new zzur("FLOAT_LIST", 19, 19, zzutVar2, zzvgVar2);
        zzbqt = zzurVar20;
        zzur zzurVar21 = new zzur("INT64_LIST", 20, 20, zzutVar2, zzvgVar3);
        zzbqu = zzurVar21;
        zzur zzurVar22 = new zzur("UINT64_LIST", 21, 21, zzutVar2, zzvgVar3);
        zzbqv = zzurVar22;
        zzur zzurVar23 = new zzur("INT32_LIST", 22, 22, zzutVar2, zzvgVar4);
        zzbqw = zzurVar23;
        zzur zzurVar24 = new zzur("FIXED64_LIST", 23, 23, zzutVar2, zzvgVar3);
        zzbqx = zzurVar24;
        zzur zzurVar25 = new zzur("FIXED32_LIST", 24, 24, zzutVar2, zzvgVar4);
        zzbqy = zzurVar25;
        zzur zzurVar26 = new zzur("BOOL_LIST", 25, 25, zzutVar2, zzvgVar5);
        zzbqz = zzurVar26;
        zzur zzurVar27 = new zzur("STRING_LIST", 26, 26, zzutVar2, zzvgVar6);
        zzbra = zzurVar27;
        zzur zzurVar28 = new zzur("MESSAGE_LIST", 27, 27, zzutVar2, zzvgVar7);
        zzbrb = zzurVar28;
        zzur zzurVar29 = new zzur("BYTES_LIST", 28, 28, zzutVar2, zzvgVar8);
        zzbrc = zzurVar29;
        zzur zzurVar30 = new zzur("UINT32_LIST", 29, 29, zzutVar2, zzvgVar4);
        zzbrd = zzurVar30;
        zzur zzurVar31 = new zzur("ENUM_LIST", 30, 30, zzutVar2, zzvgVar9);
        zzbre = zzurVar31;
        zzur zzurVar32 = new zzur("SFIXED32_LIST", 31, 31, zzutVar2, zzvgVar4);
        zzbrf = zzurVar32;
        zzur zzurVar33 = new zzur("SFIXED64_LIST", 32, 32, zzutVar2, zzvgVar3);
        zzbrg = zzurVar33;
        zzur zzurVar34 = new zzur("SINT32_LIST", 33, 33, zzutVar2, zzvgVar4);
        zzbrh = zzurVar34;
        zzur zzurVar35 = new zzur("SINT64_LIST", 34, 34, zzutVar2, zzvgVar3);
        zzbri = zzurVar35;
        zzut zzutVar3 = zzut.PACKED_VECTOR;
        zzur zzurVar36 = new zzur("DOUBLE_LIST_PACKED", 35, 35, zzutVar3, zzvgVar);
        zzbrj = zzurVar36;
        zzur zzurVar37 = new zzur("FLOAT_LIST_PACKED", 36, 36, zzutVar3, zzvgVar2);
        zzbrk = zzurVar37;
        zzur zzurVar38 = new zzur("INT64_LIST_PACKED", 37, 37, zzutVar3, zzvgVar3);
        zzbrl = zzurVar38;
        zzur zzurVar39 = new zzur("UINT64_LIST_PACKED", 38, 38, zzutVar3, zzvgVar3);
        zzbrm = zzurVar39;
        zzur zzurVar40 = new zzur("INT32_LIST_PACKED", 39, 39, zzutVar3, zzvgVar4);
        zzbrn = zzurVar40;
        zzur zzurVar41 = new zzur("FIXED64_LIST_PACKED", 40, 40, zzutVar3, zzvgVar3);
        zzbro = zzurVar41;
        zzur zzurVar42 = new zzur("FIXED32_LIST_PACKED", 41, 41, zzutVar3, zzvgVar4);
        zzbrp = zzurVar42;
        zzur zzurVar43 = new zzur("BOOL_LIST_PACKED", 42, 42, zzutVar3, zzvgVar5);
        zzbrq = zzurVar43;
        zzur zzurVar44 = new zzur("UINT32_LIST_PACKED", 43, 43, zzutVar3, zzvgVar4);
        zzbrr = zzurVar44;
        zzur zzurVar45 = new zzur("ENUM_LIST_PACKED", 44, 44, zzutVar3, zzvgVar9);
        zzbrs = zzurVar45;
        zzur zzurVar46 = new zzur("SFIXED32_LIST_PACKED", 45, 45, zzutVar3, zzvgVar4);
        zzbrt = zzurVar46;
        zzur zzurVar47 = new zzur("SFIXED64_LIST_PACKED", 46, 46, zzutVar3, zzvgVar3);
        zzbru = zzurVar47;
        zzur zzurVar48 = new zzur("SINT32_LIST_PACKED", 47, 47, zzutVar3, zzvgVar4);
        zzbrv = zzurVar48;
        zzur zzurVar49 = new zzur("SINT64_LIST_PACKED", 48, 48, zzutVar3, zzvgVar3);
        zzbrw = zzurVar49;
        zzur zzurVar50 = new zzur("GROUP_LIST", 49, 49, zzutVar2, zzvgVar7);
        zzbrx = zzurVar50;
        zzur zzurVar51 = new zzur("MAP", 50, 50, zzut.MAP, zzvg.zzbtq);
        zzbry = zzurVar51;
        zzbsf = new zzur[]{zzurVar, zzurVar2, zzurVar3, zzurVar4, zzurVar5, zzurVar6, zzurVar7, zzurVar8, zzurVar9, zzurVar10, zzurVar11, zzurVar12, zzurVar13, zzurVar14, zzurVar15, zzurVar16, zzurVar17, zzurVar18, zzurVar19, zzurVar20, zzurVar21, zzurVar22, zzurVar23, zzurVar24, zzurVar25, zzurVar26, zzurVar27, zzurVar28, zzurVar29, zzurVar30, zzurVar31, zzurVar32, zzurVar33, zzurVar34, zzurVar35, zzurVar36, zzurVar37, zzurVar38, zzurVar39, zzurVar40, zzurVar41, zzurVar42, zzurVar43, zzurVar44, zzurVar45, zzurVar46, zzurVar47, zzurVar48, zzurVar49, zzurVar50, zzurVar51};
        zzbse = new Type[0];
        zzur[] values = values();
        zzbsd = new zzur[values.length];
        for (zzur zzurVar52 : values) {
            zzbsd[zzurVar52.f236id] = zzurVar52;
        }
    }
}
