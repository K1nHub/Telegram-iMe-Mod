package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C3065k0 extends AbstractC3089o0 implements InterfaceC3062j3 {

    /* renamed from: b */
    final InterfaceC2820f f1059b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3065k0(InterfaceC2820f interfaceC2820f, boolean z) {
        super(z);
        this.f1059b = interfaceC2820f;
    }

    @Override // p033j$.util.stream.AbstractC3089o0, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        this.f1059b.accept(d);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m359a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
