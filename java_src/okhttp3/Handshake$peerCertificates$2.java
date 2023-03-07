package okhttp3;

import java.security.cert.Certificate;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* compiled from: Handshake.kt */
/* loaded from: classes4.dex */
final class Handshake$peerCertificates$2 extends Lambda implements Function0<List<? extends Certificate>> {
    final /* synthetic */ Function0 $peerCertificatesFn;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Handshake$peerCertificates$2(Function0 function0) {
        super(0);
        this.$peerCertificatesFn = function0;
    }

    @Override // kotlin.jvm.functions.Function0
    public final List<? extends Certificate> invoke() {
        List<? extends Certificate> emptyList;
        try {
            return (List) this.$peerCertificatesFn.invoke();
        } catch (SSLPeerUnverifiedException unused) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
    }
}
