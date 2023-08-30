package com.google.android.gms.internal.firebase_ml;

import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
final class zzgt extends zzgn {
    private final zzre zzwt;
    private final zzgs zzwu;
    private List<String> zzwv = new ArrayList();
    private zzgp zzww;
    private String zzwx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgt(zzgs zzgsVar, zzre zzreVar) {
        this.zzwu = zzgsVar;
        this.zzwt = zzreVar;
        zzreVar.setLenient(true);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final void close() throws IOException {
        this.zzwt.close();
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final String zzgb() {
        if (this.zzwv.isEmpty()) {
            return null;
        }
        List<String> list = this.zzwv;
        return list.get(list.size() - 1);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final zzgp zzga() {
        return this.zzww;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final zzgj zzfy() {
        return this.zzwu;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final byte zzgd() {
        zzgq();
        return Byte.parseByte(this.zzwx);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final short zzge() {
        zzgq();
        return Short.parseShort(this.zzwx);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final int getIntValue() {
        zzgq();
        return Integer.parseInt(this.zzwx);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final float zzgf() {
        zzgq();
        return Float.parseFloat(this.zzwx);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final BigInteger zzgi() {
        zzgq();
        return new BigInteger(this.zzwx);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final BigDecimal zzgj() {
        zzgq();
        return new BigDecimal(this.zzwx);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final double zzgh() {
        zzgq();
        return Double.parseDouble(this.zzwx);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final long zzgg() {
        zzgq();
        return Long.parseLong(this.zzwx);
    }

    private final void zzgq() {
        zzgp zzgpVar = this.zzww;
        zzkv.checkArgument(zzgpVar == zzgp.VALUE_NUMBER_INT || zzgpVar == zzgp.VALUE_NUMBER_FLOAT);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final String getText() {
        return this.zzwx;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final zzgp zzfz() throws IOException {
        zzrg zzrgVar;
        zzgp zzgpVar = this.zzww;
        if (zzgpVar != null) {
            int i = zzgw.zzwc[zzgpVar.ordinal()];
            if (i == 1) {
                this.zzwt.beginArray();
                this.zzwv.add(null);
            } else if (i == 2) {
                this.zzwt.beginObject();
                this.zzwv.add(null);
            }
        }
        try {
            zzrgVar = this.zzwt.zznx();
        } catch (EOFException unused) {
            zzrgVar = zzrg.END_DOCUMENT;
        }
        switch (zzgw.zzwz[zzrgVar.ordinal()]) {
            case 1:
                this.zzwx = "[";
                this.zzww = zzgp.START_ARRAY;
                break;
            case 2:
                this.zzwx = "]";
                this.zzww = zzgp.END_ARRAY;
                List<String> list = this.zzwv;
                list.remove(list.size() - 1);
                this.zzwt.endArray();
                break;
            case 3:
                this.zzwx = "{";
                this.zzww = zzgp.START_OBJECT;
                break;
            case 4:
                this.zzwx = "}";
                this.zzww = zzgp.END_OBJECT;
                List<String> list2 = this.zzwv;
                list2.remove(list2.size() - 1);
                this.zzwt.endObject();
                break;
            case 5:
                if (this.zzwt.nextBoolean()) {
                    this.zzwx = "true";
                    this.zzww = zzgp.VALUE_TRUE;
                    break;
                } else {
                    this.zzwx = "false";
                    this.zzww = zzgp.VALUE_FALSE;
                    break;
                }
            case 6:
                this.zzwx = "null";
                this.zzww = zzgp.VALUE_NULL;
                this.zzwt.nextNull();
                break;
            case 7:
                this.zzwx = this.zzwt.nextString();
                this.zzww = zzgp.VALUE_STRING;
                break;
            case 8:
                String nextString = this.zzwt.nextString();
                this.zzwx = nextString;
                this.zzww = nextString.indexOf(46) == -1 ? zzgp.VALUE_NUMBER_INT : zzgp.VALUE_NUMBER_FLOAT;
                break;
            case 9:
                this.zzwx = this.zzwt.nextName();
                this.zzww = zzgp.FIELD_NAME;
                List<String> list3 = this.zzwv;
                list3.set(list3.size() - 1, this.zzwx);
                break;
            default:
                this.zzwx = null;
                this.zzww = null;
                break;
        }
        return this.zzww;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzgn
    public final zzgn zzgc() throws IOException {
        zzgp zzgpVar = this.zzww;
        if (zzgpVar != null) {
            int i = zzgw.zzwc[zzgpVar.ordinal()];
            if (i == 1) {
                this.zzwt.skipValue();
                this.zzwx = "]";
                this.zzww = zzgp.END_ARRAY;
            } else if (i == 2) {
                this.zzwt.skipValue();
                this.zzwx = "}";
                this.zzww = zzgp.END_OBJECT;
            }
        }
        return this;
    }
}
