package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.InterfaceC2965l;
import p033j$.wrappers.C3340U;
/* renamed from: j$.util.stream.g1 */
/* loaded from: classes2.dex */
class C3181g1 extends AbstractC3199j1 implements InterfaceC3207k3 {

    /* renamed from: c */
    final /* synthetic */ EnumC3205k1 f1050c;

    /* renamed from: d */
    final /* synthetic */ C3340U f1051d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3181g1(EnumC3205k1 enumC3205k1, C3340U c3340u) {
        super(enumC3205k1);
        this.f1050c = enumC3205k1;
        this.f1051d = c3340u;
    }

    @Override // p033j$.util.stream.AbstractC3199j1, p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        boolean z;
        boolean z2;
        if (this.f1068a) {
            return;
        }
        boolean m178b = this.f1051d.m178b(i);
        z = this.f1050c.f1074a;
        if (m178b == z) {
            this.f1068a = true;
            z2 = this.f1050c.f1075b;
            this.f1069b = z2;
        }
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: b */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3229o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }
}
