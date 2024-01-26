package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2824o;
import p033j$.util.function.InterfaceC2825p;
import p033j$.wrappers.C3208g0;
/* renamed from: j$.util.stream.h1 */
/* loaded from: classes2.dex */
class C3039h1 extends AbstractC3051j1 implements InterfaceC3065l3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3057k1 f1095c;

    /* renamed from: d */
    final /* synthetic */ C3208g0 f1096d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3039h1(EnumC3057k1 enumC3057k1, C3208g0 c3208g0) {
        super(enumC3057k1);
        this.f1095c = enumC3057k1;
        this.f1096d = c3208g0;
    }

    @Override // p033j$.util.stream.AbstractC3051j1, p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean m206b = this.f1096d.m206b(j);
        z = this.f1095c.f1114a;
        if (m206b == z) {
            this.f1108a = true;
            z2 = this.f1095c.f1115b;
            this.f1109b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Long l) {
        AbstractC3081o1.m424c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }
}
