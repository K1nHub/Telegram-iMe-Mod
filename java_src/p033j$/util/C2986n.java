package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2964k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.util.n */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2986n implements InterfaceC2965l {

    /* renamed from: a */
    public final /* synthetic */ Consumer f775a;

    @Override // p033j$.util.function.InterfaceC2965l
    public final void accept(int i) {
        this.f775a.accept(Integer.valueOf(i));
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }
}
