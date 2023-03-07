package okhttp3.internal.connection;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Handshake;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealConnection.kt */
/* loaded from: classes4.dex */
public final class RealConnection$connectTls$2 extends Lambda implements Function0<List<? extends X509Certificate>> {
    final /* synthetic */ RealConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealConnection$connectTls$2(RealConnection realConnection) {
        super(0);
        this.this$0 = realConnection;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends X509Certificate> invoke() {
        Handshake handshake;
        int collectionSizeOrDefault;
        handshake = this.this$0.handshake;
        Intrinsics.checkNotNull(handshake);
        List<Certificate> peerCertificates = handshake.peerCertificates();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(peerCertificates, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Certificate certificate : peerCertificates) {
            Objects.requireNonNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            arrayList.add((X509Certificate) certificate);
        }
        return arrayList;
    }
}
