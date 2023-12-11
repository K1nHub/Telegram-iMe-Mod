package p033j$.time.format;

import p033j$.time.AbstractC2725n;
import p033j$.time.C2687d;
import p033j$.time.chrono.InterfaceC2680b;
import p033j$.time.chrono.InterfaceC2685g;
import p033j$.time.temporal.AbstractC2744n;
import p033j$.time.temporal.AbstractC2753w;
import p033j$.time.temporal.C2730A;
import p033j$.time.temporal.C2746p;
import p033j$.time.temporal.C2747q;
import p033j$.time.temporal.C2748r;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
/* renamed from: j$.time.format.u */
/* loaded from: classes2.dex */
class C2712u implements InterfaceC2741k {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2680b f570a;

    /* renamed from: b */
    final /* synthetic */ InterfaceC2741k f571b;

    /* renamed from: c */
    final /* synthetic */ InterfaceC2685g f572c;

    /* renamed from: d */
    final /* synthetic */ AbstractC2725n f573d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2712u(InterfaceC2680b interfaceC2680b, InterfaceC2741k interfaceC2741k, InterfaceC2685g interfaceC2685g, AbstractC2725n abstractC2725n) {
        this.f570a = interfaceC2680b;
        this.f571b = interfaceC2741k;
        this.f572c = interfaceC2685g;
        this.f573d = abstractC2725n;
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: c */
    public /* synthetic */ int mo741c(InterfaceC2745o interfaceC2745o) {
        return AbstractC2744n.m735a(this, interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: d */
    public C2730A mo740d(InterfaceC2745o interfaceC2745o) {
        return (this.f570a == null || !interfaceC2745o.mo724h()) ? this.f571b.mo740d(interfaceC2745o) : ((C2687d) this.f570a).mo740d(interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: e */
    public long mo739e(InterfaceC2745o interfaceC2745o) {
        return (this.f570a == null || !interfaceC2745o.mo724h()) ? this.f571b.mo739e(interfaceC2745o) : ((C2687d) this.f570a).mo739e(interfaceC2745o);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: g */
    public Object mo738g(InterfaceC2754x interfaceC2754x) {
        int i = AbstractC2753w.f647a;
        return interfaceC2754x == C2747q.f641a ? this.f572c : interfaceC2754x == C2746p.f640a ? this.f573d : interfaceC2754x == C2748r.f642a ? this.f571b.mo738g(interfaceC2754x) : interfaceC2754x.mo723a(this);
    }

    @Override // p033j$.time.temporal.InterfaceC2741k
    /* renamed from: i */
    public boolean mo737i(InterfaceC2745o interfaceC2745o) {
        return (this.f570a == null || !interfaceC2745o.mo724h()) ? this.f571b.mo737i(interfaceC2745o) : ((C2687d) this.f570a).mo737i(interfaceC2745o);
    }
}
