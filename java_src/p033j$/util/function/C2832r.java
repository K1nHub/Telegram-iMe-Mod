package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2832r implements InterfaceC2833s {

    /* renamed from: a */
    public final /* synthetic */ int f793a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2833s f794b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2833s f795c;

    public /* synthetic */ C2832r(InterfaceC2833s interfaceC2833s, InterfaceC2833s interfaceC2833s2, int i) {
        this.f793a = i;
        if (i != 1) {
            this.f794b = interfaceC2833s;
            this.f795c = interfaceC2833s2;
            return;
        }
        this.f794b = interfaceC2833s;
        this.f795c = interfaceC2833s2;
    }

    @Override // p033j$.util.function.InterfaceC2833s
    /* renamed from: a */
    public InterfaceC2833s mo185a(InterfaceC2833s interfaceC2833s) {
        switch (this.f793a) {
            case 0:
                Objects.requireNonNull(interfaceC2833s);
                return new C2832r(this, interfaceC2833s, 0);
            default:
                Objects.requireNonNull(interfaceC2833s);
                return new C2832r(this, interfaceC2833s, 0);
        }
    }

    @Override // p033j$.util.function.InterfaceC2833s
    public final long applyAsLong(long j) {
        switch (this.f793a) {
            case 0:
                return this.f795c.applyAsLong(this.f794b.applyAsLong(j));
            default:
                return this.f794b.applyAsLong(this.f795c.applyAsLong(j));
        }
    }

    @Override // p033j$.util.function.InterfaceC2833s
    /* renamed from: b */
    public InterfaceC2833s mo184b(InterfaceC2833s interfaceC2833s) {
        switch (this.f793a) {
            case 0:
                Objects.requireNonNull(interfaceC2833s);
                return new C2832r(this, interfaceC2833s, 1);
            default:
                Objects.requireNonNull(interfaceC2833s);
                return new C2832r(this, interfaceC2833s, 1);
        }
    }
}
