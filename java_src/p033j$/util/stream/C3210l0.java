package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.InterfaceC2965l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l0 */
/* loaded from: classes2.dex */
public final class C3210l0 extends AbstractC3228o0 implements InterfaceC3207k3 {

    /* renamed from: b */
    final InterfaceC2965l f1082b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3210l0(InterfaceC2965l interfaceC2965l, boolean z) {
        super(z);
        this.f1082b = interfaceC2965l;
    }

    @Override // p033j$.util.stream.AbstractC3228o0, p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        this.f1082b.accept(i);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: e */
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
