package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.InterfaceC2822l;
import p033j$.wrappers.C3188S;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C3034g1 extends AbstractC3052j1 implements InterfaceC3060k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3058k1 f1090c;

    /* renamed from: d */
    final /* synthetic */ C3188S f1091d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3034g1(EnumC3058k1 enumC3058k1, C3188S c3188s) {
        super(enumC3058k1);
        this.f1090c = enumC3058k1;
        this.f1091d = c3188s;
    }

    @Override // p033j$.util.stream.AbstractC3052j1, p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m229b = this.f1091d.m229b(i);
        z = this.f1090c.f1114a;
        if (m229b == z) {
            this.f1108a = true;
            z2 = this.f1090c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3082o1.m421b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }
}
