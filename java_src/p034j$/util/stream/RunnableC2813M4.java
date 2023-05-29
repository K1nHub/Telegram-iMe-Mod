package p034j$.util.stream;
/* renamed from: j$.util.stream.M4 */
/* loaded from: classes2.dex */
class RunnableC2813M4 implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f797a;

    /* renamed from: b */
    final /* synthetic */ Runnable f798b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2813M4(Runnable runnable, Runnable runnable2) {
        this.f797a = runnable;
        this.f798b = runnable2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f797a.run();
            this.f798b.run();
        } catch (Throwable th) {
            try {
                this.f798b.run();
            } catch (Throwable th2) {
                try {
                    th.addSuppressed(th2);
                } catch (Throwable unused) {
                }
            }
            throw th;
        }
    }
}
