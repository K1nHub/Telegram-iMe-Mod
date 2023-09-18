package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.p */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2885p implements InterfaceC2886q {

    /* renamed from: a */
    public final /* synthetic */ InterfaceC2886q f748a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2886q f749b;

    public /* synthetic */ C2885p(InterfaceC2886q interfaceC2886q, InterfaceC2886q interfaceC2886q2) {
        this.f748a = interfaceC2886q;
        this.f749b = interfaceC2886q2;
    }

    @Override // p033j$.util.function.InterfaceC2886q
    public final void accept(long j) {
        InterfaceC2886q interfaceC2886q = this.f748a;
        InterfaceC2886q interfaceC2886q2 = this.f749b;
        interfaceC2886q.accept(j);
        interfaceC2886q2.accept(j);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }
}
