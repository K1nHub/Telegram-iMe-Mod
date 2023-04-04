package p035j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2681s implements InterfaceC2682t {

    /* renamed from: a */
    public final /* synthetic */ int f666a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2682t f667b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2682t f668c;

    public /* synthetic */ C2681s(InterfaceC2682t interfaceC2682t, InterfaceC2682t interfaceC2682t2, int i) {
        this.f666a = i;
        if (i != 1) {
            this.f667b = interfaceC2682t;
            this.f668c = interfaceC2682t2;
            return;
        }
        this.f667b = interfaceC2682t;
        this.f668c = interfaceC2682t2;
    }

    @Override // p035j$.util.function.InterfaceC2682t
    /* renamed from: a */
    public InterfaceC2682t mo121a(InterfaceC2682t interfaceC2682t) {
        switch (this.f666a) {
            case 0:
                Objects.requireNonNull(interfaceC2682t);
                return new C2681s(this, interfaceC2682t, 0);
            default:
                Objects.requireNonNull(interfaceC2682t);
                return new C2681s(this, interfaceC2682t, 0);
        }
    }

    @Override // p035j$.util.function.InterfaceC2682t
    public final long applyAsLong(long j) {
        switch (this.f666a) {
            case 0:
                return this.f668c.applyAsLong(this.f667b.applyAsLong(j));
            default:
                return this.f667b.applyAsLong(this.f668c.applyAsLong(j));
        }
    }

    @Override // p035j$.util.function.InterfaceC2682t
    /* renamed from: b */
    public InterfaceC2682t mo120b(InterfaceC2682t interfaceC2682t) {
        switch (this.f666a) {
            case 0:
                Objects.requireNonNull(interfaceC2682t);
                return new C2681s(this, interfaceC2682t, 1);
            default:
                Objects.requireNonNull(interfaceC2682t);
                return new C2681s(this, interfaceC2682t, 1);
        }
    }
}
