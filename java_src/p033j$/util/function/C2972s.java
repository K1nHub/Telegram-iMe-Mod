package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2972s implements InterfaceC2973t {

    /* renamed from: a */
    public final /* synthetic */ int f759a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2973t f760b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2973t f761c;

    public /* synthetic */ C2972s(InterfaceC2973t interfaceC2973t, InterfaceC2973t interfaceC2973t2, int i) {
        this.f759a = i;
        if (i != 1) {
            this.f760b = interfaceC2973t;
            this.f761c = interfaceC2973t2;
            return;
        }
        this.f760b = interfaceC2973t;
        this.f761c = interfaceC2973t2;
    }

    @Override // p033j$.util.function.InterfaceC2973t
    /* renamed from: a */
    public InterfaceC2973t mo130a(InterfaceC2973t interfaceC2973t) {
        switch (this.f759a) {
            case 0:
                Objects.requireNonNull(interfaceC2973t);
                return new C2972s(this, interfaceC2973t, 0);
            default:
                Objects.requireNonNull(interfaceC2973t);
                return new C2972s(this, interfaceC2973t, 0);
        }
    }

    @Override // p033j$.util.function.InterfaceC2973t
    public final long applyAsLong(long j) {
        switch (this.f759a) {
            case 0:
                return this.f761c.applyAsLong(this.f760b.applyAsLong(j));
            default:
                return this.f760b.applyAsLong(this.f761c.applyAsLong(j));
        }
    }

    @Override // p033j$.util.function.InterfaceC2973t
    /* renamed from: b */
    public InterfaceC2973t mo129b(InterfaceC2973t interfaceC2973t) {
        switch (this.f759a) {
            case 0:
                Objects.requireNonNull(interfaceC2973t);
                return new C2972s(this, interfaceC2973t, 1);
            default:
                Objects.requireNonNull(interfaceC2973t);
                return new C2972s(this, interfaceC2973t, 1);
        }
    }
}
