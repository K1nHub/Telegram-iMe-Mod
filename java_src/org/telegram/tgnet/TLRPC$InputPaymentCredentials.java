package org.telegram.tgnet;
/* loaded from: classes4.dex */
public abstract class TLRPC$InputPaymentCredentials extends TLObject {
    public TLRPC$TL_dataJSON data;
    public int flags;

    /* renamed from: id */
    public String f1520id;
    public TLRPC$TL_dataJSON payment_token;
    public boolean save;
    public byte[] tmp_password;
}
