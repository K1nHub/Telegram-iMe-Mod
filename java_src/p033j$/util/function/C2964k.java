package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.k */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2964k implements InterfaceC2965l {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2965l f755a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2965l f756b;

    public /* synthetic */ C2964k(InterfaceC2965l interfaceC2965l, InterfaceC2965l interfaceC2965l2) {
        this.f755a = interfaceC2965l;
        this.f756b = interfaceC2965l2;
    }

    @Override // p033j$.util.function.InterfaceC2965l
    public final void accept(int i) {
        InterfaceC2965l interfaceC2965l = this.f755a;
        InterfaceC2965l interfaceC2965l2 = this.f756b;
        interfaceC2965l.accept(i);
        interfaceC2965l2.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }
}
