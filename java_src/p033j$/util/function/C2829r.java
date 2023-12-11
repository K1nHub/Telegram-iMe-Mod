package p033j$.util.function;

import java.util.Objects;
/* renamed from: j$.util.function.r */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2829r implements InterfaceC2830s {

    /* renamed from: a */
    public final /* synthetic */ int f793a;

    /* renamed from: b */
    public final /* synthetic */ InterfaceC2830s f794b;

    /* renamed from: c */
    public final /* synthetic */ InterfaceC2830s f795c;

    public /* synthetic */ C2829r(InterfaceC2830s interfaceC2830s, InterfaceC2830s interfaceC2830s2, int i) {
        this.f793a = i;
        if (i != 1) {
            this.f794b = interfaceC2830s;
            this.f795c = interfaceC2830s2;
            return;
        }
        this.f794b = interfaceC2830s;
        this.f795c = interfaceC2830s2;
    }

    @Override // p033j$.util.function.InterfaceC2830s
    /* renamed from: a */
    public InterfaceC2830s mo185a(InterfaceC2830s interfaceC2830s) {
        switch (this.f793a) {
            case 0:
                Objects.requireNonNull(interfaceC2830s);
                return new C2829r(this, interfaceC2830s, 0);
            default:
                Objects.requireNonNull(interfaceC2830s);
                return new C2829r(this, interfaceC2830s, 0);
        }
    }

    @Override // p033j$.util.function.InterfaceC2830s
    public final long applyAsLong(long j) {
        switch (this.f793a) {
            case 0:
                return this.f795c.applyAsLong(this.f794b.applyAsLong(j));
            default:
                return this.f794b.applyAsLong(this.f795c.applyAsLong(j));
        }
    }

    @Override // p033j$.util.function.InterfaceC2830s
    /* renamed from: b */
    public InterfaceC2830s mo184b(InterfaceC2830s interfaceC2830s) {
        switch (this.f793a) {
            case 0:
                Objects.requireNonNull(interfaceC2830s);
                return new C2829r(this, interfaceC2830s, 1);
            default:
                Objects.requireNonNull(interfaceC2830s);
                return new C2829r(this, interfaceC2830s, 1);
        }
    }
}
