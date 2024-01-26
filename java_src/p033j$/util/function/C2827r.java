package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2827r implements InterfaceC2828s {

    /* renamed from: a */
    public final /* synthetic */ int f793a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2828s f794b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2828s f795c;

    public /* synthetic */ C2827r(InterfaceC2828s interfaceC2828s, InterfaceC2828s interfaceC2828s2, int i) {
        this.f793a = i;
        if (i != 1) {
            this.f794b = interfaceC2828s;
            this.f795c = interfaceC2828s2;
            return;
        }
        this.f794b = interfaceC2828s;
        this.f795c = interfaceC2828s2;
    }

    @Override // p033j$.util.function.InterfaceC2828s
    /* renamed from: a */
    public InterfaceC2828s mo188a(InterfaceC2828s interfaceC2828s) {
        switch (this.f793a) {
            case 0:
                Objects.requireNonNull(interfaceC2828s);
                return new C2827r(this, interfaceC2828s, 0);
            default:
                Objects.requireNonNull(interfaceC2828s);
                return new C2827r(this, interfaceC2828s, 0);
        }
    }

    @Override // p033j$.util.function.InterfaceC2828s
    public final long applyAsLong(long j) {
        switch (this.f793a) {
            case 0:
                return this.f795c.applyAsLong(this.f794b.applyAsLong(j));
            default:
                return this.f794b.applyAsLong(this.f795c.applyAsLong(j));
        }
    }

    @Override // p033j$.util.function.InterfaceC2828s
    /* renamed from: b */
    public InterfaceC2828s mo187b(InterfaceC2828s interfaceC2828s) {
        switch (this.f793a) {
            case 0:
                Objects.requireNonNull(interfaceC2828s);
                return new C2827r(this, interfaceC2828s, 1);
            default:
                Objects.requireNonNull(interfaceC2828s);
                return new C2827r(this, interfaceC2828s, 1);
        }
    }
}
