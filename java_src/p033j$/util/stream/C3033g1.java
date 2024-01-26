package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.InterfaceC2821l;
import p033j$.wrappers.C3187S;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C3033g1 extends AbstractC3051j1 implements InterfaceC3059k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3057k1 f1090c;

    /* renamed from: d */
    final /* synthetic */ C3187S f1091d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3033g1(EnumC3057k1 enumC3057k1, C3187S c3187s) {
        super(enumC3057k1);
        this.f1090c = enumC3057k1;
        this.f1091d = c3187s;
    }

    @Override // p033j$.util.stream.AbstractC3051j1, p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m233b = this.f1091d.m233b(i);
        z = this.f1090c.f1114a;
        if (m233b == z) {
            this.f1108a = true;
            z2 = this.f1090c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3081o1.m425b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }
}
