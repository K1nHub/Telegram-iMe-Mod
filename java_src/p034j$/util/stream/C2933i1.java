package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.InterfaceC2699f;
import p034j$.wrappers.C3052D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C2933i1 extends AbstractC2939j1 implements InterfaceC2941j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC2945k1 f967c;

    /* renamed from: d */
    final /* synthetic */ C3052D f968d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2933i1(EnumC2945k1 enumC2945k1, C3052D c3052d) {
        super(enumC2945k1);
        this.f967c = enumC2945k1;
        this.f968d = c3052d;
    }

    @Override // p034j$.util.stream.AbstractC2939j1, p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f973a) {
            return;
        }
        boolean m225b = this.f968d.m225b(d);
        z = this.f967c.f979a;
        if (m225b == z) {
            this.f973a = true;
            z2 = this.f967c.f980b;
            this.f974b = z2;
        }
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC2969o1.m359a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }
}
