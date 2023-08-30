package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.InterfaceC2959f;
import p033j$.wrappers.C3312D;
/* renamed from: j$.util.stream.i1 */
/* loaded from: classes2.dex */
class C3193i1 extends AbstractC3199j1 implements InterfaceC3201j3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3205k1 f1062c;

    /* renamed from: d */
    final /* synthetic */ C3312D f1063d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3193i1(EnumC3205k1 enumC3205k1, C3312D c3312d) {
        super(enumC3205k1);
        this.f1062c = enumC3205k1;
        this.f1063d = c3312d;
    }

    @Override // p033j$.util.stream.AbstractC3199j1, p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        boolean z;
        boolean z2;
        if (this.f1068a) {
            return;
        }
        boolean m243b = this.f1063d.m243b(d);
        z = this.f1062c.f1074a;
        if (m243b == z) {
            this.f1068a = true;
            z2 = this.f1062c.f1075b;
            this.f1069b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Double d) {
        AbstractC3229o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }
}
