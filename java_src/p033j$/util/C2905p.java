package p033j$.util;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2905p implements InterfaceC2886q {

    /* renamed from: a */
    public final /* synthetic */ Consumer f767a;

    @Override // p033j$.util.function.InterfaceC2886q
    public final void accept(long j) {
        this.f767a.accept(Long.valueOf(j));
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }
}
