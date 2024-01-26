package p033j$.time.format;

import p033j$.time.AbstractC2723n;
import p033j$.time.C2685d;
import p033j$.time.chrono.InterfaceC2678b;
import p033j$.time.chrono.InterfaceC2683g;
import p033j$.time.temporal.AbstractC2742n;
import p033j$.time.temporal.AbstractC2751w;
import p033j$.time.temporal.C2728A;
import p033j$.time.temporal.C2744p;
import p033j$.time.temporal.C2745q;
import p033j$.time.temporal.C2746r;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
/* renamed from: j$.time.format.u */
/* loaded from: classes2.dex */
class C2710u implements InterfaceC2739k {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2678b f570a;

    /* renamed from: b */
    final /* synthetic */ InterfaceC2739k f571b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2683g f572c;

    /* renamed from: d */
    final /* synthetic */ AbstractC2723n f573d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2710u(InterfaceC2678b interfaceC2678b, InterfaceC2739k interfaceC2739k, InterfaceC2683g interfaceC2683g, AbstractC2723n abstractC2723n) {
        this.f570a = interfaceC2678b;
        this.f571b = interfaceC2739k;
        this.f572c = interfaceC2683g;
        this.f573d = abstractC2723n;
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: c */
    public /* synthetic */ int mo744c(InterfaceC2743o interfaceC2743o) {
        return AbstractC2742n.m738a(this, interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: d */
    public C2728A mo743d(InterfaceC2743o interfaceC2743o) {
        return (this.f570a == null || !interfaceC2743o.mo727h()) ? this.f571b.mo743d(interfaceC2743o) : ((C2685d) this.f570a).mo743d(interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: e */
    public long mo742e(InterfaceC2743o interfaceC2743o) {
        return (this.f570a == null || !interfaceC2743o.mo727h()) ? this.f571b.mo742e(interfaceC2743o) : ((C2685d) this.f570a).mo742e(interfaceC2743o);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: g */
    public Object mo741g(InterfaceC2752x interfaceC2752x) {
        int i = AbstractC2751w.f647a;
        return interfaceC2752x == C2745q.f641a ? this.f572c : interfaceC2752x == C2744p.f640a ? this.f573d : interfaceC2752x == C2746r.f642a ? this.f571b.mo741g(interfaceC2752x) : interfaceC2752x.mo726a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2739k
    /* renamed from: i */
    public boolean mo740i(InterfaceC2743o interfaceC2743o) {
        return (this.f570a == null || !interfaceC2743o.mo727h()) ? this.f571b.mo740i(interfaceC2743o) : ((C2685d) this.f570a).mo740i(interfaceC2743o);
    }
}
