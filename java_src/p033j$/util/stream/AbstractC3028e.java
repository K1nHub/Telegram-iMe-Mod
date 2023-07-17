package p033j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC3028e {

    /* renamed from: a */
    protected final int f1013a;

    /* renamed from: b */
    protected int f1014b;

    /* renamed from: c */
    protected int f1015c;

    /* renamed from: d */
    protected long[] f1016d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3028e() {
        this.f1013a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC3028e(int i) {
        if (i >= 0) {
            this.f1013a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f1015c;
        return i == 0 ? this.f1014b : this.f1016d[i] + this.f1014b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m416s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f1013a : Math.min((this.f1013a + i) - 1, 30));
    }
}
