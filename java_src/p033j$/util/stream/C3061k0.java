package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.k0 */
/* loaded from: classes2.dex */
public final class C3061k0 extends AbstractC3085o0 implements InterfaceC3058j3 {

    /* renamed from: b */
    final InterfaceC2820f f1112b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3061k0(InterfaceC2820f interfaceC2820f, boolean z) {
        super(z);
        this.f1112b = interfaceC2820f;
    }

    @Override // p033j$.util.stream.AbstractC3085o0, p033j$.util.stream.InterfaceC3076m3
    public void accept(double d) {
        this.f1112b.accept(d);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
    public /* synthetic */ void accept(Double d) {
        AbstractC3086o1.m423a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
