package p033j$.util.stream;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C3036f1 extends AbstractC3060j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC3066k1 f1028c;

    /* renamed from: d */
    final /* synthetic */ Predicate f1029d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3036f1(EnumC3066k1 enumC3066k1, Predicate predicate) {
        super(enumC3066k1);
        this.f1028c = enumC3066k1;
        this.f1029d = predicate;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f1058a) {
            return;
        }
        boolean test = this.f1029d.test(obj);
        z = this.f1028c.f1064a;
        if (test == z) {
            this.f1058a = true;
            z2 = this.f1028c.f1065b;
            this.f1059b = z2;
        }
    }
}
