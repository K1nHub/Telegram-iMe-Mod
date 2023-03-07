package timber.log;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
/* loaded from: classes6.dex */
public final class Timber {
    private static final Tree[] TREE_ARRAY_EMPTY;
    static volatile Tree[] forestAsArray;
    private static final List<Tree> FOREST = new ArrayList();
    private static final Tree TREE_OF_SOULS = new Tree() { // from class: timber.log.Timber.1
        @Override // timber.log.Timber.Tree
        /* renamed from: d */
        public void mo3d(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo3d(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: d */
        public void mo2d(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo2d(th);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: e */
        public void mo1e(String str, Object... objArr) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo1e(str, objArr);
            }
        }

        @Override // timber.log.Timber.Tree
        /* renamed from: e */
        public void mo0e(Throwable th) {
            for (Tree tree : Timber.forestAsArray) {
                tree.mo0e(th);
            }
        }

        @Override // timber.log.Timber.Tree
        protected void log(int i, String str, String str2, Throwable th) {
            throw new AssertionError("Missing override for log method.");
        }
    };

    /* renamed from: d */
    public static void m7d(String str, Object... objArr) {
        TREE_OF_SOULS.mo3d(str, objArr);
    }

    /* renamed from: d */
    public static void m6d(Throwable th) {
        TREE_OF_SOULS.mo2d(th);
    }

    /* renamed from: e */
    public static void m5e(String str, Object... objArr) {
        TREE_OF_SOULS.mo1e(str, objArr);
    }

    /* renamed from: e */
    public static void m4e(Throwable th) {
        TREE_OF_SOULS.mo0e(th);
    }

    public static Tree tag(String str) {
        for (Tree tree : forestAsArray) {
            tree.explicitTag.set(str);
        }
        return TREE_OF_SOULS;
    }

    public static void plant(Tree tree) {
        Objects.requireNonNull(tree, "tree == null");
        if (tree == TREE_OF_SOULS) {
            throw new IllegalArgumentException("Cannot plant Timber into itself.");
        }
        List<Tree> list = FOREST;
        synchronized (list) {
            list.add(tree);
            forestAsArray = (Tree[]) list.toArray(new Tree[list.size()]);
        }
    }

    static {
        Tree[] treeArr = new Tree[0];
        TREE_ARRAY_EMPTY = treeArr;
        forestAsArray = treeArr;
    }

    /* loaded from: classes6.dex */
    public static abstract class Tree {
        final ThreadLocal<String> explicitTag = new ThreadLocal<>();

        @Deprecated
        protected boolean isLoggable(int i) {
            return true;
        }

        protected abstract void log(int i, String str, String str2, Throwable th);

        String getTag() {
            String str = this.explicitTag.get();
            if (str != null) {
                this.explicitTag.remove();
            }
            return str;
        }

        /* renamed from: d */
        public void mo3d(String str, Object... objArr) {
            prepareLog(3, null, str, objArr);
        }

        /* renamed from: d */
        public void mo2d(Throwable th) {
            prepareLog(3, th, null, new Object[0]);
        }

        /* renamed from: e */
        public void mo1e(String str, Object... objArr) {
            prepareLog(6, null, str, objArr);
        }

        /* renamed from: e */
        public void mo0e(Throwable th) {
            prepareLog(6, th, null, new Object[0]);
        }

        protected boolean isLoggable(String str, int i) {
            return isLoggable(i);
        }

        private void prepareLog(int i, Throwable th, String str, Object... objArr) {
            String tag = getTag();
            if (isLoggable(tag, i)) {
                if (str != null && str.length() == 0) {
                    str = null;
                }
                if (str != null) {
                    if (objArr != null && objArr.length > 0) {
                        str = formatMessage(str, objArr);
                    }
                    if (th != null) {
                        str = str + "\n" + getStackTraceString(th);
                    }
                } else if (th == null) {
                    return;
                } else {
                    str = getStackTraceString(th);
                }
                log(i, tag, str, th);
            }
        }

        protected String formatMessage(String str, Object[] objArr) {
            return String.format(str, objArr);
        }

        private String getStackTraceString(Throwable th) {
            StringWriter stringWriter = new StringWriter(256);
            PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
            th.printStackTrace(printWriter);
            printWriter.flush();
            return stringWriter.toString();
        }
    }
}
