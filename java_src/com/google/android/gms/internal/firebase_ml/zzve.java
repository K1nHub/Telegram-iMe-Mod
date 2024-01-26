package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public class zzve extends IOException {
    private zzwe zzbtp;

    public zzve(String str) {
        super(str);
        this.zzbtp = null;
    }

    public final zzve zzg(zzwe zzweVar) {
        this.zzbtp = zzweVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzve zzrt() {
        return new zzve("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzve zzru() {
        return new zzve("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzve zzrv() {
        return new zzve("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvh zzrw() {
        return new zzvh("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzve zzrx() {
        return new zzve("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzve zzry() {
        return new zzve("Protocol message had invalid UTF-8.");
    }
}
