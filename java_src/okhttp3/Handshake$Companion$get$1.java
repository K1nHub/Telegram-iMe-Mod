package okhttp3;

import java.security.cert.Certificate;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: Handshake.kt */
/* loaded from: classes4.dex */
final class Handshake$Companion$get$1 extends Lambda implements Function0<List<? extends Certificate>> {
    final /* synthetic */ List $peerCertificatesCopy;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Handshake$Companion$get$1(List list) {
        super(0);
        this.$peerCertificatesCopy = list;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends Certificate> invoke() {
        return this.$peerCertificatesCopy;
    }
}
