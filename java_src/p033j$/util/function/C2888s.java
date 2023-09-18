package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2888s implements InterfaceC2889t {

    /* renamed from: a */
    public final /* synthetic */ int f750a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2889t f751b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2889t f752c;

    public /* synthetic */ C2888s(InterfaceC2889t interfaceC2889t, InterfaceC2889t interfaceC2889t2, int i) {
        this.f750a = i;
        if (i != 1) {
            this.f751b = interfaceC2889t;
            this.f752c = interfaceC2889t2;
            return;
        }
        this.f751b = interfaceC2889t;
        this.f752c = interfaceC2889t2;
    }

    @Override // p033j$.util.function.InterfaceC2889t
    /* renamed from: a */
    public InterfaceC2889t mo130a(InterfaceC2889t interfaceC2889t) {
        switch (this.f750a) {
            case 0:
                Objects.requireNonNull(interfaceC2889t);
                return new C2888s(this, interfaceC2889t, 0);
            default:
                Objects.requireNonNull(interfaceC2889t);
                return new C2888s(this, interfaceC2889t, 0);
        }
    }

    @Override // p033j$.util.function.InterfaceC2889t
    public final long applyAsLong(long j) {
        switch (this.f750a) {
            case 0:
                return this.f752c.applyAsLong(this.f751b.applyAsLong(j));
            default:
                return this.f751b.applyAsLong(this.f752c.applyAsLong(j));
        }
    }

    @Override // p033j$.util.function.InterfaceC2889t
    /* renamed from: b */
    public InterfaceC2889t mo129b(InterfaceC2889t interfaceC2889t) {
        switch (this.f750a) {
            case 0:
                Objects.requireNonNull(interfaceC2889t);
                return new C2888s(this, interfaceC2889t, 1);
            default:
                Objects.requireNonNull(interfaceC2889t);
                return new C2888s(this, interfaceC2889t, 1);
        }
    }
}
