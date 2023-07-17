package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2833s implements InterfaceC2834t {

    /* renamed from: a */
    public final /* synthetic */ int f746a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2834t f747b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2834t f748c;

    public /* synthetic */ C2833s(InterfaceC2834t interfaceC2834t, InterfaceC2834t interfaceC2834t2, int i) {
        this.f746a = i;
        if (i != 1) {
            this.f747b = interfaceC2834t;
            this.f748c = interfaceC2834t2;
            return;
        }
        this.f747b = interfaceC2834t;
        this.f748c = interfaceC2834t2;
    }

    @Override // p033j$.util.function.InterfaceC2834t
    /* renamed from: a */
    public InterfaceC2834t mo112a(InterfaceC2834t interfaceC2834t) {
        switch (this.f746a) {
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
        switch (this.f746a) {
            case 0:
                return this.f748c.applyAsLong(this.f747b.applyAsLong(j));
            default:
                return this.f747b.applyAsLong(this.f748c.applyAsLong(j));
        }
    }

    @Override // p033j$.util.function.InterfaceC2834t
    /* renamed from: b */
    public InterfaceC2834t mo111b(InterfaceC2834t interfaceC2834t) {
        switch (this.f746a) {
            case 0:
                Objects.requireNonNull(interfaceC2834t);
                return new C2833s(this, interfaceC2834t, 1);
            default:
                Objects.requireNonNull(interfaceC2834t);
                return new C2833s(this, interfaceC2834t, 1);
        }
    }
}
