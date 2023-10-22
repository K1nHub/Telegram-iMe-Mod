package org.ton.adnl.network;
/* compiled from: IPAddress.kt */
/* loaded from: classes6.dex */
public interface IPAddress {
    public static final Companion Companion = Companion.$$INSTANCE;

    String getHost();

    int getPort();

    /* compiled from: IPAddress.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final IPAddress ipv4(int i, int i2) {
            return new IPv4Address(i, i2);
        }
    }
}
