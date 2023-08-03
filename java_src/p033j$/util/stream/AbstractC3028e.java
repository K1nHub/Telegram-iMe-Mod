package p033j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC3028e {

    /* renamed from: a */
    protected final int f1016a;

    /* renamed from: b */
    protected int f1017b;

    /* renamed from: c */
    protected int f1018c;

    /* renamed from: d */
    protected long[] f1019d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3028e() {
        this.f1016a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3028e(int i) {
        if (i >= 0) {
            this.f1016a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f1018c;
        return i == 0 ? this.f1017b : this.f1019d[i] + this.f1017b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m434s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f1016a : Math.min((this.f1016a + i) - 1, 30));
    }
}
