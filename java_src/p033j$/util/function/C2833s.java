package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2833s implements InterfaceC2834t {

    /* renamed from: a */
    public final /* synthetic */ int f749a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2834t f750b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2834t f751c;

    public /* synthetic */ C2833s(InterfaceC2834t interfaceC2834t, InterfaceC2834t interfaceC2834t2, int i) {
        this.f749a = i;
        if (i != 1) {
            this.f750b = interfaceC2834t;
            this.f751c = interfaceC2834t2;
            return;
        }
        this.f750b = interfaceC2834t;
        this.f751c = interfaceC2834t2;
    }

    @Override // p033j$.util.function.InterfaceC2834t
    /* renamed from: a */
    public InterfaceC2834t mo130a(InterfaceC2834t interfaceC2834t) {
        switch (this.f749a) {
            case 0:
                Objects.requireNonNull(interfaceC2834t);
                return new C2833s(this, interfaceC2834t, 0);
            default:
                Objects.requireNonNull(interfaceC2834t);
                return new C2833s(this, interfaceC2834t, 0);
        }
    }

    @Override // p033j$.util.function.InterfaceC2834t
    public final long applyAsLong(long j) {
        switch (this.f749a) {
            case 0:
                return this.f751c.applyAsLong(this.f750b.applyAsLong(j));
            default:
                return this.f750b.applyAsLong(this.f751c.applyAsLong(j));
        }
    }

    @Override // p033j$.util.function.InterfaceC2834t
    /* renamed from: b */
    public InterfaceC2834t mo129b(InterfaceC2834t interfaceC2834t) {
        switch (this.f749a) {
            case 0:
                Objects.requireNonNull(interfaceC2834t);
                return new C2833s(this, interfaceC2834t, 1);
            default:
                Objects.requireNonNull(interfaceC2834t);
                return new C2833s(this, interfaceC2834t, 1);
        }
    }
}
