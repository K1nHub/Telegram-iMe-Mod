package org.telegram.messenger;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.core.graphics.ColorUtils;
import com.google.android.exoplayer2.DefaultLoadControl;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.DispatchQueuePriority;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.p043ui.Cells.ChatMessageCell;
import org.telegram.p043ui.Components.AnimatedFileDrawable;
import org.telegram.p043ui.Components.BackgroundGradientDrawable;
import org.telegram.p043ui.Components.MotionBackgroundDrawable;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$InputEncryptedFile;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$MessageExtendedMedia;
import org.telegram.tgnet.TLRPC$MessageMedia;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeVideo;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated;
import org.telegram.tgnet.TLRPC$TL_fileLocationUnavailable;
import org.telegram.tgnet.TLRPC$TL_messageExtendedMediaPreview;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_messageMediaInvoice;
import org.telegram.tgnet.TLRPC$TL_messageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messageMediaWebPage;
import org.telegram.tgnet.TLRPC$TL_photoCachedSize;
import org.telegram.tgnet.TLRPC$TL_photoSize_layer127;
import org.telegram.tgnet.TLRPC$TL_photoStrippedSize;
import org.telegram.tgnet.TLRPC$WallPaper;
import org.telegram.tgnet.TLRPC$WallPaperSettings;
import p033j$.util.concurrent.ConcurrentHashMap;
import p033j$.util.function.Consumer;
import p033j$.util.stream.Stream;
import p033j$.wrappers.C$r8$wrapper$java$util$stream$Stream$VWRP;
/* loaded from: classes4.dex */
public class ImageLoader {
    public static final String AUTOPLAY_FILTER = "g";
    public static final int CACHE_TYPE_CACHE = 1;
    public static final int CACHE_TYPE_ENCRYPTED = 2;
    public static final int CACHE_TYPE_NONE = 0;
    private static final boolean DEBUG_MODE = false;
    private boolean canForce8888;
    private LruCache<BitmapDrawable> lottieMemCache;
    private LruCache<BitmapDrawable> memCache;
    private LruCache<BitmapDrawable> smallImagesMemCache;
    private LruCache<BitmapDrawable> wallpaperMemCache;
    private static ThreadLocal<byte[]> bytesLocal = new ThreadLocal<>();
    private static ThreadLocal<byte[]> bytesThumbLocal = new ThreadLocal<>();
    private static byte[] header = new byte[12];
    private static byte[] headerThumb = new byte[12];
    private static volatile ImageLoader Instance = null;
    private HashMap<String, Integer> bitmapUseCounts = new HashMap<>();
    ArrayList<AnimatedFileDrawable> cachedAnimatedFileDrawables = new ArrayList<>();
    private HashMap<String, CacheImage> imageLoadingByUrl = new HashMap<>();
    private HashMap<String, CacheImage> imageLoadingByUrlPframe = new HashMap<>();
    private HashMap<String, CacheImage> imageLoadingByKeys = new HashMap<>();
    private SparseArray<CacheImage> imageLoadingByTag = new SparseArray<>();
    private HashMap<String, ThumbGenerateInfo> waitingForQualityThumb = new HashMap<>();
    private SparseArray<String> waitingForQualityThumbByTag = new SparseArray<>();
    private LinkedList<HttpImageTask> httpTasks = new LinkedList<>();
    private LinkedList<ArtworkLoadTask> artworkTasks = new LinkedList<>();
    private DispatchQueuePriority cacheOutQueue = new DispatchQueuePriority("cacheOutQueue");
    private DispatchQueue cacheThumbOutQueue = new DispatchQueue("cacheThumbOutQueue");
    private DispatchQueue thumbGeneratingQueue = new DispatchQueue("thumbGeneratingQueue");
    private DispatchQueue imageLoadQueue = new DispatchQueue("imageLoadQueue");
    private HashMap<String, String> replacedBitmaps = new HashMap<>();
    private ConcurrentHashMap<String, long[]> fileProgresses = new ConcurrentHashMap<>();
    private HashMap<String, ThumbGenerateTask> thumbGenerateTasks = new HashMap<>();
    private HashMap<String, Integer> forceLoadingImages = new HashMap<>();
    private int currentHttpTasksCount = 0;
    private int currentArtworkTasksCount = 0;
    private ConcurrentHashMap<String, WebFile> testWebFile = new ConcurrentHashMap<>();
    private LinkedList<HttpFileTask> httpFileLoadTasks = new LinkedList<>();
    private HashMap<String, HttpFileTask> httpFileLoadTasksByKeys = new HashMap<>();
    private HashMap<String, Runnable> retryHttpsTasks = new HashMap<>();
    private int currentHttpFileLoadTasksCount = 0;
    private String ignoreRemoval = null;
    private volatile long lastCacheOutTime = 0;
    private int lastImageNum = 0;
    private File telegramPath = null;

    public static boolean hasAutoplayFilter(String str) {
        if (str == null) {
            return false;
        }
        String[] split = str.split("_");
        for (int i = 0; i < split.length; i++) {
            if (AUTOPLAY_FILTER.equals(split[i]) || "pframe".equals(split[i])) {
                return true;
            }
        }
        return false;
    }

    public static Drawable createStripedBitmap(ArrayList<TLRPC$PhotoSize> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) instanceof TLRPC$TL_photoStrippedSize) {
                return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), getStrippedPhotoBitmap(((TLRPC$TL_photoStrippedSize) arrayList.get(i)).bytes, "b"));
            }
        }
        return null;
    }

    public static boolean isSdCardPath(File file) {
        return !TextUtils.isEmpty(SharedConfig.storageCacheDir) && file.getAbsolutePath().startsWith(SharedConfig.storageCacheDir);
    }

    public void moveToFront(String str) {
        if (str == null) {
            return;
        }
        if (this.lottieMemCache.get(str) != null) {
            this.lottieMemCache.moveToFront(str);
        }
        if (this.memCache.get(str) != null) {
            this.memCache.moveToFront(str);
        }
        if (this.smallImagesMemCache.get(str) != null) {
            this.smallImagesMemCache.moveToFront(str);
        }
    }

    public void putThumbsToCache(ArrayList<MessageThumb> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            putImageToCache(arrayList.get(i).drawable, arrayList.get(i).key, true);
        }
    }

    public LruCache<BitmapDrawable> getLottieMemCahce() {
        return this.lottieMemCache;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class ThumbGenerateInfo {
        private boolean big;
        private String filter;
        private ArrayList<ImageReceiver> imageReceiverArray;
        private ArrayList<Integer> imageReceiverGuidsArray;
        private TLRPC$Document parentDocument;

        private ThumbGenerateInfo() {
            this.imageReceiverArray = new ArrayList<>();
            this.imageReceiverGuidsArray = new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class HttpFileTask extends AsyncTask<Void, Void, Boolean> {
        private int currentAccount;
        private String ext;
        private int fileSize;
        private final boolean isAppUpdate;
        private long lastProgressTime;
        private File tempFile;
        private String url;
        private RandomAccessFile fileOutputStream = null;
        private boolean canRetry = true;

        public HttpFileTask(String str, File file, String str2, int i) {
            boolean z = true;
            this.url = str;
            this.tempFile = file;
            this.ext = str2;
            this.currentAccount = i;
            this.isAppUpdate = (SharedConfig.isAppUpdateAvailable() && SharedConfig.pendingAppUpdate.url.equals(str)) ? false : false;
        }

        private void reportProgress(final long j, final long j2) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (j != j2) {
                long j3 = this.lastProgressTime;
                if (j3 != 0 && j3 >= elapsedRealtime - 100) {
                    return;
                }
            }
            this.lastProgressTime = elapsedRealtime;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpFileTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpFileTask.this.lambda$reportProgress$1(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$1(final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(this.url, new long[]{j, j2});
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpFileTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpFileTask.this.lambda$reportProgress$0(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$0(long j, long j2) {
            (this.isAppUpdate ? NotificationCenter.getGlobalInstance() : NotificationCenter.getInstance(this.currentAccount)).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, this.url, Long.valueOf(j), Long.valueOf(j2));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0121, code lost:
            if (r5 != (-1)) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x0123, code lost:
            r0 = r11.fileSize;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x0125, code lost:
            if (r0 == 0) goto L55;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x0127, code lost:
            reportProgress(r0, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x012d, code lost:
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x012f, code lost:
            r1 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x0133, code lost:
            org.telegram.messenger.FileLog.m102e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x0137, code lost:
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x013b, code lost:
            org.telegram.messenger.FileLog.m102e(r0);
         */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0143 A[Catch: all -> 0x0149, TRY_LEAVE, TryCatch #6 {all -> 0x0149, blocks: (B:99:0x013f, B:101:0x0143), top: B:123:0x013f }] */
        /* JADX WARN: Removed duplicated region for block: B:114:0x014f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:119:0x00ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.Void... r12) {
            /*
                Method dump skipped, instructions count: 348
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.HttpFileTask.doInBackground(java.lang.Void[]):java.lang.Boolean");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            ImageLoader.this.runHttpFileLoadTasks(this, bool.booleanValue() ? 2 : 1);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.runHttpFileLoadTasks(this, this.isAppUpdate ? 0 : 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ArtworkLoadTask extends AsyncTask<Void, Void, String> {
        private CacheImage cacheImage;
        private boolean canRetry = true;
        private HttpURLConnection httpConnection;
        private boolean small;

        public ArtworkLoadTask(CacheImage cacheImage) {
            this.cacheImage = cacheImage;
            this.small = Uri.parse(cacheImage.imageLocation.path).getQueryParameter("s") != null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Finally extract failed */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            InputStream inputStream;
            ByteArrayOutputStream byteArrayOutputStream;
            InputStream inputStream2;
            ByteArrayOutputStream byteArrayOutputStream2;
            int read;
            int responseCode;
            try {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.cacheImage.imageLocation.path.replace("athumb://", "https://")).openConnection();
                    this.httpConnection = httpURLConnection;
                    httpURLConnection.setConnectTimeout(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
                    this.httpConnection.setReadTimeout(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS);
                    this.httpConnection.connect();
                    try {
                        HttpURLConnection httpURLConnection2 = this.httpConnection;
                        if (httpURLConnection2 != null && (responseCode = httpURLConnection2.getResponseCode()) != 200 && responseCode != 202 && responseCode != 304) {
                            this.canRetry = false;
                        }
                    } catch (Exception e) {
                        FileLog.m101e((Throwable) e, false);
                    }
                    inputStream2 = this.httpConnection.getInputStream();
                    try {
                        byteArrayOutputStream2 = new ByteArrayOutputStream();
                    } catch (Throwable th) {
                        byteArrayOutputStream = null;
                        inputStream = inputStream2;
                        th = th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                    byteArrayOutputStream = null;
                }
            } catch (Exception unused) {
            }
            try {
                byte[] bArr = new byte[LiteMode.FLAG_CHAT_SCALE];
                while (!isCancelled() && (read = inputStream2.read(bArr)) > 0) {
                    byteArrayOutputStream2.write(bArr, 0, read);
                }
                this.canRetry = false;
                JSONArray jSONArray = new JSONObject(new String(byteArrayOutputStream2.toByteArray())).getJSONArray("results");
                if (jSONArray.length() <= 0) {
                    try {
                        HttpURLConnection httpURLConnection3 = this.httpConnection;
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                        }
                    } catch (Throwable unused2) {
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Throwable th3) {
                            FileLog.m102e(th3);
                        }
                    }
                    byteArrayOutputStream2.close();
                }
                String string = jSONArray.getJSONObject(0).getString("artworkUrl100");
                if (this.small) {
                    try {
                        HttpURLConnection httpURLConnection4 = this.httpConnection;
                        if (httpURLConnection4 != null) {
                            httpURLConnection4.disconnect();
                        }
                    } catch (Throwable unused3) {
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Throwable th4) {
                            FileLog.m102e(th4);
                        }
                    }
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Exception unused4) {
                    }
                    return string;
                }
                String replace = string.replace("100x100", "600x600");
                try {
                    HttpURLConnection httpURLConnection5 = this.httpConnection;
                    if (httpURLConnection5 != null) {
                        httpURLConnection5.disconnect();
                    }
                } catch (Throwable unused5) {
                }
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Throwable th5) {
                        FileLog.m102e(th5);
                    }
                }
                try {
                    byteArrayOutputStream2.close();
                } catch (Exception unused6) {
                }
                return replace;
            } catch (Throwable th6) {
                inputStream = inputStream2;
                th = th6;
                byteArrayOutputStream = byteArrayOutputStream2;
                try {
                    if (th instanceof SocketTimeoutException) {
                        if (ApplicationLoader.isNetworkOnline()) {
                            this.canRetry = false;
                        }
                    } else if (th instanceof UnknownHostException) {
                        this.canRetry = false;
                    } else if (th instanceof SocketException) {
                        if (th.getMessage() != null && th.getMessage().contains("ECONNRESET")) {
                            this.canRetry = false;
                        }
                    } else if (th instanceof FileNotFoundException) {
                        this.canRetry = false;
                    }
                    FileLog.m101e(th, false);
                    try {
                        HttpURLConnection httpURLConnection6 = this.httpConnection;
                        if (httpURLConnection6 != null) {
                            httpURLConnection6.disconnect();
                        }
                    } catch (Throwable unused7) {
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th7) {
                            FileLog.m102e(th7);
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    return null;
                } catch (Throwable th8) {
                    try {
                        HttpURLConnection httpURLConnection7 = this.httpConnection;
                        if (httpURLConnection7 != null) {
                            httpURLConnection7.disconnect();
                        }
                    } catch (Throwable unused8) {
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th9) {
                            FileLog.m102e(th9);
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused9) {
                        }
                    }
                    throw th8;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final String str) {
            if (str != null) {
                ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.ArtworkLoadTask.this.lambda$onPostExecute$0(str);
                    }
                });
            } else if (this.canRetry) {
                ImageLoader.this.artworkLoadError(this.cacheImage.url);
            }
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.ArtworkLoadTask.this.lambda$onPostExecute$1();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$0(String str) {
            CacheImage cacheImage = this.cacheImage;
            cacheImage.httpTask = new HttpImageTask(cacheImage, 0, str);
            ImageLoader.this.httpTasks.add(this.cacheImage.httpTask);
            ImageLoader.this.runHttpTasks(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$1() {
            ImageLoader.this.runArtworkTasks(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$2() {
            ImageLoader.this.runArtworkTasks(true);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.ArtworkLoadTask.this.lambda$onCancelled$2();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class HttpImageTask extends AsyncTask<Void, Void, Boolean> {
        private CacheImage cacheImage;
        private boolean canRetry = true;
        private RandomAccessFile fileOutputStream;
        private HttpURLConnection httpConnection;
        private long imageSize;
        private long lastProgressTime;
        private String overrideUrl;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$doInBackground$2(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        }

        public HttpImageTask(CacheImage cacheImage, long j) {
            this.cacheImage = cacheImage;
            this.imageSize = j;
        }

        public HttpImageTask(CacheImage cacheImage, int i, String str) {
            this.cacheImage = cacheImage;
            this.imageSize = i;
            this.overrideUrl = str;
        }

        private void reportProgress(final long j, final long j2) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (j != j2) {
                long j3 = this.lastProgressTime;
                if (j3 != 0 && j3 >= elapsedRealtime - 100) {
                    return;
                }
            }
            this.lastProgressTime = elapsedRealtime;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpImageTask.this.lambda$reportProgress$1(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$1(final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(this.cacheImage.url, new long[]{j, j2});
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpImageTask.this.lambda$reportProgress$0(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$0(long j, long j2) {
            NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, this.cacheImage.url, Long.valueOf(j), Long.valueOf(j2));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't wrap try/catch for region: R(16:1|(7:101|102|(1:147)|106|(1:108)|109|(15:111|112|113|4|(6:34|35|(1:43)|45|(3:49|50|(1:58))|(6:63|64|65|(2:66|(1:97)(3:68|69|(3:71|(3:73|74|75)(1:77)|76)(1:78)))|81|82))|6|7|(1:9)|11|12|(1:14)|(2:26|27)|(1:22)|23|24))|3|4|(0)|6|7|(0)|11|12|(0)|(0)|(3:18|20|22)|23|24|(1:(0))) */
        /* JADX WARN: Code restructure failed: missing block: B:100:0x0176, code lost:
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0177, code lost:
            r2 = true;
            r1 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x017b, code lost:
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x017c, code lost:
            r2 = true;
            r1 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:106:0x0183, code lost:
            org.telegram.messenger.FileLog.m102e(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x018a, code lost:
            org.telegram.messenger.FileLog.m102e(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:115:0x0197, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:116:0x0198, code lost:
            org.telegram.messenger.FileLog.m102e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x016a, code lost:
            if (r7 != (-1)) goto L81;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x016c, code lost:
            r2 = r12.imageSize;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0170, code lost:
            if (r2 == 0) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0172, code lost:
            reportProgress(r2, r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:113:0x0191 A[Catch: all -> 0x0197, TRY_LEAVE, TryCatch #6 {all -> 0x0197, blocks: (B:111:0x018d, B:113:0x0191), top: B:142:0x018d }] */
        /* JADX WARN: Removed duplicated region for block: B:119:0x019f A[Catch: all -> 0x01a2, TRY_LEAVE, TryCatch #2 {all -> 0x01a2, blocks: (B:117:0x019b, B:119:0x019f), top: B:138:0x019b }] */
        /* JADX WARN: Removed duplicated region for block: B:126:0x01ae  */
        /* JADX WARN: Removed duplicated region for block: B:144:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:148:0x00ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean doInBackground(java.lang.Void... r13) {
            /*
                Method dump skipped, instructions count: 455
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.HttpImageTask.doInBackground(java.lang.Void[]):java.lang.Boolean");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final Boolean bool) {
            if (!bool.booleanValue() && this.canRetry) {
                ImageLoader.this.httpFileLoadError(this.cacheImage.url);
            } else {
                ImageLoader imageLoader = ImageLoader.this;
                CacheImage cacheImage = this.cacheImage;
                imageLoader.fileDidLoaded(cacheImage.url, cacheImage.finalFilePath, 0);
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpImageTask.this.lambda$onPostExecute$4(bool);
                }
            });
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpImageTask.this.lambda$onPostExecute$5();
                }
            }, this.cacheImage.priority);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$4(final Boolean bool) {
            ImageLoader.this.fileProgresses.remove(this.cacheImage.url);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpImageTask.this.lambda$onPostExecute$3(bool);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$3(Boolean bool) {
            if (bool.booleanValue()) {
                NotificationCenter notificationCenter = NotificationCenter.getInstance(this.cacheImage.currentAccount);
                int i = NotificationCenter.fileLoaded;
                CacheImage cacheImage = this.cacheImage;
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i, cacheImage.url, cacheImage.finalFilePath);
                return;
            }
            NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, this.cacheImage.url, 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$5() {
            ImageLoader.this.runHttpTasks(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$6() {
            ImageLoader.this.runHttpTasks(true);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpImageTask.this.lambda$onCancelled$6();
                }
            }, this.cacheImage.priority);
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpImageTask.this.lambda$onCancelled$8();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$8() {
            ImageLoader.this.fileProgresses.remove(this.cacheImage.url);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.HttpImageTask.this.lambda$onCancelled$7();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$7() {
            NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, this.cacheImage.url, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class ThumbGenerateTask implements Runnable {
        private ThumbGenerateInfo info;
        private int mediaType;
        private File originalPath;

        public ThumbGenerateTask(int i, File file, ThumbGenerateInfo thumbGenerateInfo) {
            this.mediaType = i;
            this.originalPath = file;
            this.info = thumbGenerateInfo;
        }

        private void removeTask() {
            ThumbGenerateInfo thumbGenerateInfo = this.info;
            if (thumbGenerateInfo == null) {
                return;
            }
            final String attachFileName = FileLoader.getAttachFileName(thumbGenerateInfo.parentDocument);
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.ThumbGenerateTask.this.lambda$removeTask$0(attachFileName);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$removeTask$0(String str) {
            ImageLoader.this.thumbGenerateTasks.remove(str);
        }

        @Override // java.lang.Runnable
        public void run() {
            int min;
            Bitmap createScaledBitmap;
            try {
                if (this.info == null) {
                    removeTask();
                    return;
                }
                final String str = "q_" + this.info.parentDocument.dc_id + "_" + this.info.parentDocument.f1610id;
                File file = new File(FileLoader.getDirectory(4), str + ".jpg");
                if (!file.exists() && this.originalPath.exists()) {
                    if (this.info.big) {
                        Point point = AndroidUtilities.displaySize;
                        min = Math.max(point.x, point.y);
                    } else {
                        Point point2 = AndroidUtilities.displaySize;
                        min = Math.min(180, Math.min(point2.x, point2.y) / 4);
                    }
                    int i = this.mediaType;
                    Bitmap bitmap = null;
                    if (i == 0) {
                        float f = min;
                        bitmap = ImageLoader.loadBitmap(this.originalPath.toString(), null, f, f, false);
                    } else {
                        int i2 = 2;
                        if (i == 2) {
                            String file2 = this.originalPath.toString();
                            if (!this.info.big) {
                                i2 = 1;
                            }
                            bitmap = SendMessagesHelper.createVideoThumbnail(file2, i2);
                        } else if (i == 3) {
                            String lowerCase = this.originalPath.toString().toLowerCase();
                            if (lowerCase.endsWith("mp4")) {
                                String file3 = this.originalPath.toString();
                                if (!this.info.big) {
                                    i2 = 1;
                                }
                                bitmap = SendMessagesHelper.createVideoThumbnail(file3, i2);
                            } else if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg") || lowerCase.endsWith(".png") || lowerCase.endsWith(".gif")) {
                                float f2 = min;
                                bitmap = ImageLoader.loadBitmap(lowerCase, null, f2, f2, false);
                            }
                        }
                    }
                    if (bitmap == null) {
                        removeTask();
                        return;
                    }
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    if (width != 0 && height != 0) {
                        float f3 = width;
                        float f4 = min;
                        float f5 = height;
                        float min2 = Math.min(f3 / f4, f5 / f4);
                        if (min2 > 1.0f && (createScaledBitmap = Bitmaps.createScaledBitmap(bitmap, (int) (f3 / min2), (int) (f5 / min2), true)) != bitmap) {
                            bitmap.recycle();
                            bitmap = createScaledBitmap;
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        bitmap.compress(Bitmap.CompressFormat.JPEG, this.info.big ? 83 : 60, fileOutputStream);
                        try {
                            fileOutputStream.close();
                        } catch (Exception e) {
                            FileLog.m102e(e);
                        }
                        final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmap);
                        final ArrayList arrayList = new ArrayList(this.info.imageReceiverArray);
                        final ArrayList arrayList2 = new ArrayList(this.info.imageReceiverGuidsArray);
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                ImageLoader.ThumbGenerateTask.this.lambda$run$1(str, arrayList, bitmapDrawable, arrayList2);
                            }
                        });
                        return;
                    }
                    removeTask();
                    return;
                }
                removeTask();
            } catch (Throwable th) {
                FileLog.m102e(th);
                removeTask();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(String str, ArrayList arrayList, BitmapDrawable bitmapDrawable, ArrayList arrayList2) {
            removeTask();
            if (this.info.filter != null) {
                str = str + "@" + this.info.filter;
            }
            for (int i = 0; i < arrayList.size(); i++) {
                ((ImageReceiver) arrayList.get(i)).setImageBitmapByKey(bitmapDrawable, str, 0, false, ((Integer) arrayList2.get(i)).intValue());
            }
            ImageLoader.this.memCache.put(str, bitmapDrawable);
        }
    }

    public static String decompressGzip(File file) {
        StringBuilder sb = new StringBuilder();
        if (file == null) {
            return "";
        }
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(new FileInputStream(file));
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(gZIPInputStream, "UTF-8"));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine);
                    } else {
                        String sb2 = sb.toString();
                        bufferedReader.close();
                        gZIPInputStream.close();
                        return sb2;
                    }
                } catch (Throwable th) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class CacheOutTask implements Runnable {
        private CacheImage cacheImage;
        private boolean isCancelled;
        private Thread runningThread;
        private final Object sync = new Object();

        public CacheOutTask(CacheImage cacheImage) {
            this.cacheImage = cacheImage;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(11:1016|(2:1018|(9:1020|1021|1022|(1:1024)|1025|(2:1031|(1:1033))|(1:1035)(1:1038)|1036|1037))|1042|1021|1022|(0)|1025|(4:1027|1029|1031|(0))|(0)(0)|1036|1037) */
        /* JADX WARN: Can't wrap try/catch for region: R(14:71|(9:72|73|74|75|(1:77)(1:131)|78|79|80|81)|(3:83|84|(7:86|87|88|(1:114)(1:91)|(2:100|(1:113)(4:103|(1:107)|108|(1:112)))(1:95)|(1:97)(1:99)|98))|119|87|88|(0)|114|(0)|100|(0)|113|(0)(0)|98) */
        /* JADX WARN: Can't wrap try/catch for region: R(25:(6:972|973|974|975|(1:977)(1:990)|978)|(2:980|(23:982|983|984|341|(21:343|(3:345|(1:347)(1:960)|348)(2:961|(18:963|(1:965)(1:967)|966|350|351|(1:353)|354|355|356|(15:358|(5:360|361|362|363|364)(1:927)|365|366|(1:368)(2:908|(1:910)(2:911|(1:913)(2:914|(1:916)(1:917))))|369|370|371|372|373|374|375|(1:377)(2:896|(1:898))|(1:895)(11:383|384|385|386|(2:861|(10:863|(1:882)(1:867)|(1:869)|870|871|872|(3:877|878|(1:880))|881|878|(0))(3:883|(1:885)(1:887)|886))(2:(6:390|391|392|393|394|395)(1:860)|396)|397|(1:852)(1:401)|402|(1:404)|405|(1:851)(4:411|(1:412)|414|415))|416)(3:928|(11:930|931|932|(1:934)(1:954)|935|936|937|(1:939)|940|(4:942|(1:943)|945|946)(1:949)|947)(1:957)|948)|417|418|(3:723|724|8a9)(7:420|(1:422)|(3:707|708|(6:710|711|(3:714|715|(1:717))(1:713)|425|426|b73))|424|425|426|b73)|464|(3:467|(1:469)(1:471)|470)|(2:477|(1:479))|480|(3:(1:495)(1:498)|496|497)(3:(1:487)(1:490)|488|489))(2:968|(1:970)))|349|350|351|(0)|354|355|356|(0)(0)|417|418|(0)(0)|464|(3:467|(0)(0)|470)|(4:473|475|477|(0))|480|(1:482)|(0)(0)|496|497)|971|351|(0)|354|355|356|(0)(0)|417|418|(0)(0)|464|(0)|(0)|480|(0)|(0)(0)|496|497))|989|983|984|341|(0)|971|351|(0)|354|355|356|(0)(0)|417|418|(0)(0)|464|(0)|(0)|480|(0)|(0)(0)|496|497) */
        /* JADX WARN: Can't wrap try/catch for region: R(28:323|(1:1015)(1:330)|331|(2:333|(1:1013))(1:1014)|337|338|(30:972|973|974|975|(1:977)(1:990)|978|(2:980|(23:982|983|984|341|(21:343|(3:345|(1:347)(1:960)|348)(2:961|(18:963|(1:965)(1:967)|966|350|351|(1:353)|354|355|356|(15:358|(5:360|361|362|363|364)(1:927)|365|366|(1:368)(2:908|(1:910)(2:911|(1:913)(2:914|(1:916)(1:917))))|369|370|371|372|373|374|375|(1:377)(2:896|(1:898))|(1:895)(11:383|384|385|386|(2:861|(10:863|(1:882)(1:867)|(1:869)|870|871|872|(3:877|878|(1:880))|881|878|(0))(3:883|(1:885)(1:887)|886))(2:(6:390|391|392|393|394|395)(1:860)|396)|397|(1:852)(1:401)|402|(1:404)|405|(1:851)(4:411|(1:412)|414|415))|416)(3:928|(11:930|931|932|(1:934)(1:954)|935|936|937|(1:939)|940|(4:942|(1:943)|945|946)(1:949)|947)(1:957)|948)|417|418|(3:723|724|8a9)(7:420|(1:422)|(3:707|708|(6:710|711|(3:714|715|(1:717))(1:713)|425|426|b73))|424|425|426|b73)|464|(3:467|(1:469)(1:471)|470)|(2:477|(1:479))|480|(3:(1:495)(1:498)|496|497)(3:(1:487)(1:490)|488|489))(2:968|(1:970)))|349|350|351|(0)|354|355|356|(0)(0)|417|418|(0)(0)|464|(3:467|(0)(0)|470)|(4:473|475|477|(0))|480|(1:482)|(0)(0)|496|497)|971|351|(0)|354|355|356|(0)(0)|417|418|(0)(0)|464|(0)|(0)|480|(0)|(0)(0)|496|497))|989|983|984|341|(0)|971|351|(0)|354|355|356|(0)(0)|417|418|(0)(0)|464|(0)|(0)|480|(0)|(0)(0)|496|497)|340|341|(0)|971|351|(0)|354|355|356|(0)(0)|417|418|(0)(0)|464|(0)|(0)|480|(0)|(0)(0)|496|497) */
        /* JADX WARN: Can't wrap try/catch for region: R(7:420|(1:422)|(3:707|708|(6:710|711|(3:714|715|(1:717))(1:713)|425|426|b73))|424|425|426|b73) */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x020b, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:119:0x020c, code lost:
            org.telegram.messenger.FileLog.m102e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:349:0x0587, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:350:0x0588, code lost:
            org.telegram.messenger.FileLog.m102e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:545:0x087e, code lost:
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:546:0x087f, code lost:
            r26 = r14;
            r35 = r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:921:0x0e73, code lost:
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:974:0x0f47, code lost:
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:975:0x0f48, code lost:
            org.telegram.messenger.FileLog.m102e(r0);
            r2 = null;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 25, insn: 0x076c: MOVE  (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r25 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:474:0x076c */
        /* JADX WARN: Removed duplicated region for block: B:1013:0x0bf9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:1052:0x0b74 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:1075:0x089e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:1076:0x02c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:136:0x0230 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0238 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:147:0x0246 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:160:0x026f  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x028d  */
        /* JADX WARN: Removed duplicated region for block: B:196:0x0311  */
        /* JADX WARN: Removed duplicated region for block: B:210:0x0345  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x0374  */
        /* JADX WARN: Removed duplicated region for block: B:224:0x0379  */
        /* JADX WARN: Removed duplicated region for block: B:287:0x0479  */
        /* JADX WARN: Removed duplicated region for block: B:288:0x047b  */
        /* JADX WARN: Removed duplicated region for block: B:290:0x0483  */
        /* JADX WARN: Removed duplicated region for block: B:291:0x0485  */
        /* JADX WARN: Removed duplicated region for block: B:294:0x048c  */
        /* JADX WARN: Removed duplicated region for block: B:295:0x048f  */
        /* JADX WARN: Removed duplicated region for block: B:298:0x049d  */
        /* JADX WARN: Removed duplicated region for block: B:299:0x04a0  */
        /* JADX WARN: Removed duplicated region for block: B:310:0x04e4  */
        /* JADX WARN: Removed duplicated region for block: B:314:0x0501  */
        /* JADX WARN: Removed duplicated region for block: B:374:0x05bc  */
        /* JADX WARN: Removed duplicated region for block: B:396:0x062a  */
        /* JADX WARN: Removed duplicated region for block: B:400:0x063a A[Catch: all -> 0x087e, TryCatch #45 {all -> 0x087e, blocks: (B:398:0x0634, B:400:0x063a, B:402:0x0643), top: B:1069:0x0634 }] */
        /* JADX WARN: Removed duplicated region for block: B:471:0x0763 A[Catch: all -> 0x07d4, TryCatch #20 {all -> 0x07d4, blocks: (B:480:0x078c, B:484:0x079a, B:489:0x07b4, B:496:0x07c4, B:498:0x07cd, B:499:0x07d0, B:485:0x07a3, B:462:0x074b, B:464:0x0751, B:469:0x075b, B:471:0x0763, B:477:0x0776, B:479:0x0785, B:478:0x0780), top: B:1027:0x06d7 }] */
        /* JADX WARN: Removed duplicated region for block: B:519:0x0807  */
        /* JADX WARN: Removed duplicated region for block: B:684:0x0b21  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x015a  */
        /* JADX WARN: Removed duplicated region for block: B:832:0x0d58  */
        /* JADX WARN: Removed duplicated region for block: B:835:0x0d5e  */
        /* JADX WARN: Removed duplicated region for block: B:842:0x0d76 A[Catch: all -> 0x0e68, TryCatch #32 {all -> 0x0e68, blocks: (B:836:0x0d60, B:838:0x0d6a, B:840:0x0d70, B:842:0x0d76, B:844:0x0d7c, B:850:0x0d93, B:856:0x0da2, B:858:0x0da8, B:864:0x0dc7, B:859:0x0db2, B:861:0x0db8, B:867:0x0dcf, B:869:0x0ddc, B:871:0x0de7, B:875:0x0dee, B:830:0x0d51), top: B:1048:0x0d51 }] */
        /* JADX WARN: Removed duplicated region for block: B:864:0x0dc7 A[Catch: all -> 0x0e68, TryCatch #32 {all -> 0x0e68, blocks: (B:836:0x0d60, B:838:0x0d6a, B:840:0x0d70, B:842:0x0d76, B:844:0x0d7c, B:850:0x0d93, B:856:0x0da2, B:858:0x0da8, B:864:0x0dc7, B:859:0x0db2, B:861:0x0db8, B:867:0x0dcf, B:869:0x0ddc, B:871:0x0de7, B:875:0x0dee, B:830:0x0d51), top: B:1048:0x0d51 }] */
        /* JADX WARN: Removed duplicated region for block: B:931:0x0e8c A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:934:0x0e9a  */
        /* JADX WARN: Removed duplicated region for block: B:935:0x0e9c  */
        /* JADX WARN: Removed duplicated region for block: B:938:0x0eb1  */
        /* JADX WARN: Removed duplicated region for block: B:944:0x0ed0  */
        /* JADX WARN: Removed duplicated region for block: B:947:0x0eda  */
        /* JADX WARN: Removed duplicated region for block: B:960:0x0efd  */
        /* JADX WARN: Removed duplicated region for block: B:961:0x0f04  */
        /* JADX WARN: Removed duplicated region for block: B:971:0x0f41  */
        /* JADX WARN: Removed duplicated region for block: B:983:0x0f6d  */
        /* JADX WARN: Removed duplicated region for block: B:985:0x0f75  */
        /* JADX WARN: Removed duplicated region for block: B:986:0x0f7b  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 3971
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.CacheOutTask.run():void");
        }

        private Bitmap applyWallpaperSetting(Bitmap bitmap, TLRPC$WallPaper tLRPC$WallPaper) {
            int i;
            if (!tLRPC$WallPaper.pattern || tLRPC$WallPaper.settings == null) {
                TLRPC$WallPaperSettings tLRPC$WallPaperSettings = tLRPC$WallPaper.settings;
                return (tLRPC$WallPaperSettings == null || !tLRPC$WallPaperSettings.blur) ? bitmap : Utilities.blurWallpaper(bitmap);
            }
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            TLRPC$WallPaperSettings tLRPC$WallPaperSettings2 = tLRPC$WallPaper.settings;
            boolean z = true;
            if (tLRPC$WallPaperSettings2.second_background_color == 0) {
                i = AndroidUtilities.getPatternColor(tLRPC$WallPaperSettings2.background_color);
                canvas.drawColor(ColorUtils.setAlphaComponent(tLRPC$WallPaper.settings.background_color, 255));
            } else if (tLRPC$WallPaperSettings2.third_background_color == 0) {
                int alphaComponent = ColorUtils.setAlphaComponent(tLRPC$WallPaperSettings2.background_color, 255);
                int alphaComponent2 = ColorUtils.setAlphaComponent(tLRPC$WallPaper.settings.second_background_color, 255);
                int averageColor = AndroidUtilities.getAverageColor(alphaComponent, alphaComponent2);
                GradientDrawable gradientDrawable = new GradientDrawable(BackgroundGradientDrawable.getGradientOrientation(tLRPC$WallPaper.settings.rotation), new int[]{alphaComponent, alphaComponent2});
                gradientDrawable.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                gradientDrawable.draw(canvas);
                i = averageColor;
            } else {
                int alphaComponent3 = ColorUtils.setAlphaComponent(tLRPC$WallPaperSettings2.background_color, 255);
                int alphaComponent4 = ColorUtils.setAlphaComponent(tLRPC$WallPaper.settings.second_background_color, 255);
                int alphaComponent5 = ColorUtils.setAlphaComponent(tLRPC$WallPaper.settings.third_background_color, 255);
                int i2 = tLRPC$WallPaper.settings.fourth_background_color;
                int alphaComponent6 = i2 == 0 ? 0 : ColorUtils.setAlphaComponent(i2, 255);
                int patternColor = MotionBackgroundDrawable.getPatternColor(alphaComponent3, alphaComponent4, alphaComponent5, alphaComponent6);
                MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable();
                motionBackgroundDrawable.setColors(alphaComponent3, alphaComponent4, alphaComponent5, alphaComponent6);
                motionBackgroundDrawable.setBounds(0, 0, createBitmap.getWidth(), createBitmap.getHeight());
                motionBackgroundDrawable.setPatternBitmap(tLRPC$WallPaper.settings.intensity, bitmap);
                motionBackgroundDrawable.draw(canvas);
                z = false;
                i = patternColor;
            }
            if (z) {
                Paint paint = new Paint(2);
                paint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
                paint.setAlpha((int) ((tLRPC$WallPaper.settings.intensity / 100.0f) * 255.0f));
                canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
            }
            return createBitmap;
        }

        private void loadLastFrame(RLottieDrawable rLottieDrawable, int i, int i2, boolean z, boolean z2) {
            Bitmap createBitmap;
            Canvas canvas;
            Drawable bitmapDrawable;
            if (z && z2) {
                float f = i * 1.2f;
                float f2 = i2 * 1.2f;
                createBitmap = Bitmap.createBitmap((int) f, (int) f2, Bitmap.Config.ARGB_8888);
                canvas = new Canvas(createBitmap);
                canvas.scale(2.0f, 2.0f, f / 2.0f, f2 / 2.0f);
            } else {
                createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                canvas = new Canvas(createBitmap);
            }
            rLottieDrawable.prepareForGenerateCache();
            Bitmap createBitmap2 = Bitmap.createBitmap(rLottieDrawable.getIntrinsicWidth(), rLottieDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            rLottieDrawable.setGeneratingFrame(z ? rLottieDrawable.getFramesCount() - 1 : 0);
            rLottieDrawable.getNextFrame(createBitmap2);
            rLottieDrawable.releaseForGenerateCache();
            canvas.save();
            if (!z || !z2) {
                canvas.scale(createBitmap2.getWidth() / i, createBitmap2.getHeight() / i2, i / 2.0f, i2 / 2.0f);
            }
            Paint paint = new Paint(1);
            paint.setFilterBitmap(true);
            if (z && z2) {
                canvas.drawBitmap(createBitmap2, (createBitmap.getWidth() - createBitmap2.getWidth()) / 2.0f, (createBitmap.getHeight() - createBitmap2.getHeight()) / 2.0f, paint);
                bitmapDrawable = new ImageReceiver.ReactionLastFrame(createBitmap);
            } else {
                canvas.drawBitmap(createBitmap2, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
                bitmapDrawable = new BitmapDrawable(createBitmap);
            }
            rLottieDrawable.recycle(false);
            createBitmap2.recycle();
            onPostExecute(bitmapDrawable);
        }

        private void onPostExecute(final Drawable drawable) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheOutTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.CacheOutTask.this.lambda$onPostExecute$1(drawable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$1(Drawable drawable) {
            final String str;
            boolean z = false;
            final Drawable drawable2 = null;
            r2 = null;
            r2 = null;
            r2 = null;
            String str2 = null;
            if (drawable instanceof RLottieDrawable) {
                RLottieDrawable rLottieDrawable = (RLottieDrawable) drawable;
                Drawable drawable3 = (Drawable) ImageLoader.this.lottieMemCache.get(this.cacheImage.key);
                if (drawable3 == null) {
                    ImageLoader.this.lottieMemCache.put(this.cacheImage.key, rLottieDrawable);
                    drawable = rLottieDrawable;
                } else {
                    rLottieDrawable.recycle(false);
                    drawable = drawable3;
                }
                if (drawable != null) {
                    ImageLoader.this.incrementUseCount(this.cacheImage.key);
                    str2 = this.cacheImage.key;
                }
            } else if (drawable instanceof AnimatedFileDrawable) {
                AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) drawable;
                if (animatedFileDrawable.isWebmSticker) {
                    BitmapDrawable fromLottieCache = ImageLoader.this.getFromLottieCache(this.cacheImage.key);
                    if (fromLottieCache == null) {
                        ImageLoader.this.lottieMemCache.put(this.cacheImage.key, animatedFileDrawable);
                        drawable = animatedFileDrawable;
                    } else {
                        animatedFileDrawable.recycle();
                        drawable = fromLottieCache;
                    }
                    ImageLoader.this.incrementUseCount(this.cacheImage.key);
                    str2 = this.cacheImage.key;
                }
            } else if (!(drawable instanceof BitmapDrawable)) {
                str = null;
                ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheOutTask$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.CacheOutTask.this.lambda$onPostExecute$0(drawable2, str);
                    }
                }, this.cacheImage.priority);
            } else {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                BitmapDrawable fromMemCache = ImageLoader.this.getFromMemCache(this.cacheImage.key);
                boolean z2 = true;
                if (fromMemCache == null) {
                    if (this.cacheImage.key.endsWith("_f")) {
                        ImageLoader.this.wallpaperMemCache.put(this.cacheImage.key, bitmapDrawable);
                    } else {
                        if (this.cacheImage.key.endsWith("_isc") || bitmapDrawable.getBitmap().getWidth() > AndroidUtilities.density * 80.0f || bitmapDrawable.getBitmap().getHeight() > AndroidUtilities.density * 80.0f) {
                            ImageLoader.this.memCache.put(this.cacheImage.key, bitmapDrawable);
                        } else {
                            ImageLoader.this.smallImagesMemCache.put(this.cacheImage.key, bitmapDrawable);
                        }
                        z = true;
                    }
                    z2 = z;
                    drawable = bitmapDrawable;
                } else {
                    AndroidUtilities.recycleBitmap(bitmapDrawable.getBitmap());
                    drawable = fromMemCache;
                }
                if (drawable != null && z2) {
                    ImageLoader.this.incrementUseCount(this.cacheImage.key);
                    str2 = this.cacheImage.key;
                }
            }
            String str3 = str2;
            drawable2 = drawable;
            str = str3;
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheOutTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.CacheOutTask.this.lambda$onPostExecute$0(drawable2, str);
                }
            }, this.cacheImage.priority);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$0(Drawable drawable, String str) {
            this.cacheImage.setImageAndClear(drawable, str);
        }

        public void cancel() {
            synchronized (this.sync) {
                try {
                    this.isCancelled = true;
                    Thread thread = this.runningThread;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAnimatedAvatar(String str) {
        return str != null && str.endsWith("avatar");
    }

    private boolean isPFrame(String str) {
        return str != null && str.endsWith("pframe");
    }

    public BitmapDrawable getFromMemCache(String str) {
        BitmapDrawable bitmapDrawable = this.memCache.get(str);
        if (bitmapDrawable == null) {
            bitmapDrawable = this.smallImagesMemCache.get(str);
        }
        if (bitmapDrawable == null) {
            bitmapDrawable = this.wallpaperMemCache.get(str);
        }
        return bitmapDrawable == null ? getFromLottieCache(str) : bitmapDrawable;
    }

    public static Bitmap getStrippedPhotoBitmap(byte[] bArr, String str) {
        int length = (bArr.length - 3) + Bitmaps.header.length + Bitmaps.footer.length;
        byte[] bArr2 = bytesLocal.get();
        if (bArr2 == null || bArr2.length < length) {
            bArr2 = null;
        }
        if (bArr2 == null) {
            bArr2 = new byte[length];
            bytesLocal.set(bArr2);
        }
        byte[] bArr3 = Bitmaps.header;
        System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
        System.arraycopy(bArr, 3, bArr2, Bitmaps.header.length, bArr.length - 3);
        System.arraycopy(Bitmaps.footer, 0, bArr2, (Bitmaps.header.length + bArr.length) - 3, Bitmaps.footer.length);
        boolean z = true;
        bArr2[164] = bArr[1];
        bArr2[166] = bArr[2];
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (TextUtils.isEmpty(str) || !str.contains("r")) {
            z = false;
        }
        options.inPreferredConfig = (SharedConfig.deviceIsHigh() || z) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr2, 0, length, options);
        if (z) {
            Bitmap createBitmap = Bitmap.createBitmap(decodeByteArray.getWidth(), decodeByteArray.getHeight(), decodeByteArray.getConfig());
            Canvas canvas = new Canvas(createBitmap);
            canvas.save();
            canvas.scale(1.2f, 1.2f, decodeByteArray.getWidth() / 2.0f, decodeByteArray.getHeight() / 2.0f);
            canvas.drawBitmap(decodeByteArray, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            canvas.restore();
            Path path = new Path();
            path.addCircle(decodeByteArray.getWidth() / 2.0f, decodeByteArray.getHeight() / 2.0f, Math.min(decodeByteArray.getWidth(), decodeByteArray.getHeight()) / 2.0f, Path.Direction.CW);
            canvas.clipPath(path);
            canvas.drawBitmap(decodeByteArray, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (Paint) null);
            decodeByteArray.recycle();
            decodeByteArray = createBitmap;
        }
        if (decodeByteArray != null && !TextUtils.isEmpty(str) && str.contains("b")) {
            Utilities.blurBitmap(decodeByteArray, 3, 1, decodeByteArray.getWidth(), decodeByteArray.getHeight(), decodeByteArray.getRowBytes());
        }
        return decodeByteArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class CacheImage {
        protected ArtworkLoadTask artworkTask;
        protected CacheOutTask cacheTask;
        protected int cacheType;
        protected int currentAccount;
        protected File encryptionKeyPath;
        protected String ext;
        protected String filter;
        protected ArrayList<String> filters;
        protected File finalFilePath;
        protected HttpImageTask httpTask;
        protected ImageLocation imageLocation;
        protected ArrayList<ImageReceiver> imageReceiverArray;
        protected ArrayList<Integer> imageReceiverGuidsArray;
        protected int imageType;
        public boolean isPFrame;
        protected String key;
        protected ArrayList<String> keys;
        protected Object parentObject;
        public int priority;
        public Runnable runningTask;
        protected SecureDocument secureDocument;
        protected long size;
        protected File tempFilePath;
        protected int type;
        protected ArrayList<Integer> types;
        protected String url;

        private CacheImage() {
            this.priority = 1;
            this.imageReceiverArray = new ArrayList<>();
            this.imageReceiverGuidsArray = new ArrayList<>();
            this.keys = new ArrayList<>();
            this.filters = new ArrayList<>();
            this.types = new ArrayList<>();
        }

        public void addImageReceiver(ImageReceiver imageReceiver, String str, String str2, int i, int i2) {
            int indexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (indexOf >= 0 && Objects.equals(this.imageReceiverArray.get(indexOf).getImageKey(), str)) {
                this.imageReceiverGuidsArray.set(indexOf, Integer.valueOf(i2));
                return;
            }
            this.imageReceiverArray.add(imageReceiver);
            this.imageReceiverGuidsArray.add(Integer.valueOf(i2));
            this.keys.add(str);
            this.filters.add(str2);
            this.types.add(Integer.valueOf(i));
            ImageLoader.this.imageLoadingByTag.put(imageReceiver.getTag(i), this);
        }

        public void replaceImageReceiver(ImageReceiver imageReceiver, String str, String str2, int i, int i2) {
            int indexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (indexOf == -1) {
                return;
            }
            if (this.types.get(indexOf).intValue() != i) {
                ArrayList<ImageReceiver> arrayList = this.imageReceiverArray;
                indexOf = arrayList.subList(indexOf + 1, arrayList.size()).indexOf(imageReceiver);
                if (indexOf == -1) {
                    return;
                }
            }
            this.imageReceiverGuidsArray.set(indexOf, Integer.valueOf(i2));
            this.keys.set(indexOf, str);
            this.filters.set(indexOf, str2);
        }

        public void setImageReceiverGuid(ImageReceiver imageReceiver, int i) {
            int indexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (indexOf == -1) {
                return;
            }
            this.imageReceiverGuidsArray.set(indexOf, Integer.valueOf(i));
        }

        public void removeImageReceiver(ImageReceiver imageReceiver) {
            int i = this.type;
            int i2 = 0;
            while (i2 < this.imageReceiverArray.size()) {
                ImageReceiver imageReceiver2 = this.imageReceiverArray.get(i2);
                if (imageReceiver2 == null || imageReceiver2 == imageReceiver) {
                    this.imageReceiverArray.remove(i2);
                    this.imageReceiverGuidsArray.remove(i2);
                    this.keys.remove(i2);
                    this.filters.remove(i2);
                    i = this.types.remove(i2).intValue();
                    if (imageReceiver2 != null) {
                        ImageLoader.this.imageLoadingByTag.remove(imageReceiver2.getTag(i));
                    }
                    i2--;
                }
                i2++;
            }
            if (this.imageReceiverArray.isEmpty()) {
                if (this.imageLocation != null && !ImageLoader.this.forceLoadingImages.containsKey(this.key)) {
                    ImageLocation imageLocation = this.imageLocation;
                    if (imageLocation.location != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.location, this.ext);
                    } else if (imageLocation.document != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.document);
                    } else if (imageLocation.secureDocument != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.secureDocument);
                    } else if (imageLocation.webFile != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.webFile);
                    }
                }
                if (this.cacheTask != null) {
                    if (i == 1) {
                        ImageLoader.this.cacheThumbOutQueue.cancelRunnable(this.cacheTask);
                    } else {
                        ImageLoader.this.cacheOutQueue.cancelRunnable(this.cacheTask);
                        ImageLoader.this.cacheOutQueue.cancelRunnable(this.runningTask);
                    }
                    this.cacheTask.cancel();
                    this.cacheTask = null;
                }
                if (this.httpTask != null) {
                    ImageLoader.this.httpTasks.remove(this.httpTask);
                    this.httpTask.cancel(true);
                    this.httpTask = null;
                }
                if (this.artworkTask != null) {
                    ImageLoader.this.artworkTasks.remove(this.artworkTask);
                    this.artworkTask.cancel(true);
                    this.artworkTask = null;
                }
                if (this.url != null) {
                    ImageLoader.this.imageLoadingByUrl.remove(this.url);
                }
                if (this.url != null) {
                    ImageLoader.this.imageLoadingByUrlPframe.remove(this.url);
                }
                if (this.key != null) {
                    ImageLoader.this.imageLoadingByKeys.remove(this.key);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void changePriority(int i) {
            TLRPC$Document tLRPC$Document;
            SecureDocument secureDocument;
            WebFile webFile;
            TLRPC$FileLocation tLRPC$FileLocation;
            SecureDocument secureDocument2;
            String str;
            WebFile webFile2;
            ImageLocation imageLocation = this.imageLocation;
            if (imageLocation != null) {
                TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated = imageLocation.location;
                if (tLRPC$TL_fileLocationToBeDeprecated != null) {
                    str = this.ext;
                    tLRPC$FileLocation = tLRPC$TL_fileLocationToBeDeprecated;
                    tLRPC$Document = null;
                    secureDocument = null;
                    webFile2 = null;
                } else {
                    TLRPC$Document tLRPC$Document2 = imageLocation.document;
                    if (tLRPC$Document2 != null) {
                        tLRPC$Document = tLRPC$Document2;
                        secureDocument = null;
                    } else {
                        SecureDocument secureDocument3 = imageLocation.secureDocument;
                        if (secureDocument3 != null) {
                            secureDocument = secureDocument3;
                            tLRPC$Document = null;
                            secureDocument2 = null;
                            tLRPC$FileLocation = secureDocument2;
                            webFile = secureDocument2;
                            str = tLRPC$FileLocation;
                            webFile2 = webFile;
                        } else {
                            WebFile webFile3 = imageLocation.webFile;
                            if (webFile3 != null) {
                                webFile = webFile3;
                                tLRPC$Document = null;
                                secureDocument = null;
                                tLRPC$FileLocation = null;
                                str = tLRPC$FileLocation;
                                webFile2 = webFile;
                            } else {
                                tLRPC$Document = null;
                                secureDocument = null;
                            }
                        }
                    }
                    secureDocument2 = secureDocument;
                    tLRPC$FileLocation = secureDocument2;
                    webFile = secureDocument2;
                    str = tLRPC$FileLocation;
                    webFile2 = webFile;
                }
                FileLoader.getInstance(this.currentAccount).changePriority(i, tLRPC$Document, secureDocument, webFile2, tLRPC$FileLocation, str, null);
            }
        }

        public void setImageAndClear(final Drawable drawable, final String str) {
            if (drawable != null) {
                final ArrayList arrayList = new ArrayList(this.imageReceiverArray);
                final ArrayList arrayList2 = new ArrayList(this.imageReceiverGuidsArray);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheImage$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.CacheImage.this.lambda$setImageAndClear$0(drawable, arrayList, arrayList2, str);
                    }
                });
            }
            for (int i = 0; i < this.imageReceiverArray.size(); i++) {
                ImageLoader.this.imageLoadingByTag.remove(this.imageReceiverArray.get(i).getTag(this.type));
            }
            this.imageReceiverArray.clear();
            this.imageReceiverGuidsArray.clear();
            if (this.url != null) {
                ImageLoader.this.imageLoadingByUrl.remove(this.url);
            }
            if (this.url != null) {
                ImageLoader.this.imageLoadingByUrlPframe.remove(this.url);
            }
            if (this.key != null) {
                ImageLoader.this.imageLoadingByKeys.remove(this.key);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$setImageAndClear$0(android.graphics.drawable.Drawable r10, java.util.ArrayList r11, java.util.ArrayList r12, java.lang.String r13) {
            /*
                r9 = this;
                boolean r0 = r10 instanceof org.telegram.p043ui.Components.AnimatedFileDrawable
                r1 = 0
                if (r0 == 0) goto L4a
                r0 = r10
                org.telegram.ui.Components.AnimatedFileDrawable r0 = (org.telegram.p043ui.Components.AnimatedFileDrawable) r0
                boolean r2 = r0.isWebmSticker
                if (r2 != 0) goto L4a
                r10 = r1
            Ld:
                int r2 = r11.size()
                if (r1 >= r2) goto L44
                java.lang.Object r2 = r11.get(r1)
                r3 = r2
                org.telegram.messenger.ImageReceiver r3 = (org.telegram.messenger.ImageReceiver) r3
                if (r1 != 0) goto L1e
                r2 = r0
                goto L22
            L1e:
                org.telegram.ui.Components.AnimatedFileDrawable r2 = r0.makeCopy()
            L22:
                java.lang.String r5 = r9.key
                int r6 = r9.type
                r7 = 0
                java.lang.Object r4 = r12.get(r1)
                java.lang.Integer r4 = (java.lang.Integer) r4
                int r8 = r4.intValue()
                r4 = r2
                boolean r3 = r3.setImageBitmapByKey(r4, r5, r6, r7, r8)
                if (r3 == 0) goto L3c
                if (r2 != r0) goto L41
                r10 = 1
                goto L41
            L3c:
                if (r2 == r0) goto L41
                r2.recycle()
            L41:
                int r1 = r1 + 1
                goto Ld
            L44:
                if (r10 != 0) goto L77
                r0.recycle()
                goto L77
            L4a:
                int r0 = r11.size()
                if (r1 >= r0) goto L77
                java.lang.Object r0 = r11.get(r1)
                r2 = r0
                org.telegram.messenger.ImageReceiver r2 = (org.telegram.messenger.ImageReceiver) r2
                java.lang.String r4 = r9.key
                java.util.ArrayList<java.lang.Integer> r0 = r9.types
                java.lang.Object r0 = r0.get(r1)
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r5 = r0.intValue()
                r6 = 0
                java.lang.Object r0 = r12.get(r1)
                java.lang.Integer r0 = (java.lang.Integer) r0
                int r7 = r0.intValue()
                r3 = r10
                r2.setImageBitmapByKey(r3, r4, r5, r6, r7)
                int r1 = r1 + 1
                goto L4a
            L77:
                if (r13 == 0) goto L7e
                org.telegram.messenger.ImageLoader r10 = org.telegram.messenger.ImageLoader.this
                r10.decrementUseCount(r13)
            L7e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.CacheImage.lambda$setImageAndClear$0(android.graphics.drawable.Drawable, java.util.ArrayList, java.util.ArrayList, java.lang.String):void");
        }
    }

    public static ImageLoader getInstance() {
        ImageLoader imageLoader = Instance;
        if (imageLoader == null) {
            synchronized (ImageLoader.class) {
                imageLoader = Instance;
                if (imageLoader == null) {
                    imageLoader = new ImageLoader();
                    Instance = imageLoader;
                }
            }
        }
        return imageLoader;
    }

    public ImageLoader() {
        this.thumbGeneratingQueue.setPriority(1);
        int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
        boolean z = memoryClass >= 192;
        this.canForce8888 = z;
        int min = Math.min(z ? 30 : 15, memoryClass / 7) * 1024 * 1024;
        float f = min;
        this.memCache = new LruCache<BitmapDrawable>((int) (0.8f * f)) { // from class: org.telegram.messenger.ImageLoader.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                if (ImageLoader.this.ignoreRemoval == null || !ImageLoader.this.ignoreRemoval.equals(str)) {
                    Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                    if (num == null || num.intValue() == 0) {
                        Bitmap bitmap = bitmapDrawable.getBitmap();
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(bitmap);
                        AndroidUtilities.recycleBitmaps(arrayList);
                    }
                }
            }
        };
        this.smallImagesMemCache = new LruCache<BitmapDrawable>((int) (f * 0.2f)) { // from class: org.telegram.messenger.ImageLoader.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                if (ImageLoader.this.ignoreRemoval == null || !ImageLoader.this.ignoreRemoval.equals(str)) {
                    Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                    if (num == null || num.intValue() == 0) {
                        Bitmap bitmap = bitmapDrawable.getBitmap();
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(bitmap);
                        AndroidUtilities.recycleBitmaps(arrayList);
                    }
                }
            }
        };
        this.wallpaperMemCache = new LruCache<BitmapDrawable>(min / 4) { // from class: org.telegram.messenger.ImageLoader.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }
        };
        this.lottieMemCache = new LruCache<BitmapDrawable>(10485760) { // from class: org.telegram.messenger.ImageLoader.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }

            @Override // org.telegram.messenger.LruCache
            public BitmapDrawable put(String str, BitmapDrawable bitmapDrawable) {
                if (bitmapDrawable instanceof AnimatedFileDrawable) {
                    ImageLoader.this.cachedAnimatedFileDrawables.add((AnimatedFileDrawable) bitmapDrawable);
                }
                return (BitmapDrawable) super.put(str, (String) bitmapDrawable);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                boolean z3 = bitmapDrawable instanceof AnimatedFileDrawable;
                if (z3) {
                    ImageLoader.this.cachedAnimatedFileDrawables.remove((AnimatedFileDrawable) bitmapDrawable);
                }
                if (num == null || num.intValue() == 0) {
                    if (z3) {
                        ((AnimatedFileDrawable) bitmapDrawable).recycle();
                    }
                    if (bitmapDrawable instanceof RLottieDrawable) {
                        ((RLottieDrawable) bitmapDrawable).recycle(false);
                    }
                }
            }
        };
        SparseArray sparseArray = new SparseArray();
        File cacheDir = AndroidUtilities.getCacheDir();
        if (!cacheDir.isDirectory()) {
            try {
                cacheDir.mkdirs();
            } catch (Exception e) {
                FileLog.m102e(e);
            }
        }
        AndroidUtilities.createEmptyFile(new File(cacheDir, ".nomedia"));
        sparseArray.put(4, cacheDir);
        for (int i = 0; i < 5; i++) {
            FileLoader.getInstance(i).setDelegate(new C35885(i));
        }
        FileLoader.setMediaDirs(sparseArray);
        C35896 c35896 = new C35896();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter.addAction("android.intent.action.MEDIA_CHECKING");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_NOFS");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter.addAction("android.intent.action.MEDIA_SHARED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTABLE");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme("file");
        try {
            ApplicationLoader.applicationContext.registerReceiver(c35896, intentFilter);
        } catch (Throwable unused) {
        }
        checkMediaPaths();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.ImageLoader$5 */
    /* loaded from: classes4.dex */
    public class C35885 implements FileLoader.FileLoaderDelegate {
        final /* synthetic */ int val$currentAccount;

        C35885(int i) {
            this.val$currentAccount = i;
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileUploadProgressChanged(FileUploadOperation fileUploadOperation, final String str, final long j, final long j2, final boolean z) {
            ImageLoader.this.fileProgresses.put(str, new long[]{j, j2});
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j3 = fileUploadOperation.lastProgressUpdateTime;
            if (j3 == 0 || j3 < elapsedRealtime - 100 || j == j2) {
                fileUploadOperation.lastProgressUpdateTime = elapsedRealtime;
                final int i = this.val$currentAccount;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.C35885.lambda$fileUploadProgressChanged$0(i, str, j, j2, z);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$fileUploadProgressChanged$0(int i, String str, long j, long j2, boolean z) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, Long.valueOf(j), Long.valueOf(j2), Boolean.valueOf(z));
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidUploaded(final String str, final TLRPC$InputFile tLRPC$InputFile, final TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile, final byte[] bArr, final byte[] bArr2, final long j) {
            DispatchQueue dispatchQueue = Utilities.stageQueue;
            final int i = this.val$currentAccount;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.C35885.this.lambda$fileDidUploaded$2(i, str, tLRPC$InputFile, tLRPC$InputEncryptedFile, bArr, bArr2, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$fileDidUploaded$1(int i, String str, TLRPC$InputFile tLRPC$InputFile, TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile, byte[] bArr, byte[] bArr2, long j) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploaded, str, tLRPC$InputFile, tLRPC$InputEncryptedFile, bArr, bArr2, Long.valueOf(j));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidUploaded$2(final int i, final String str, final TLRPC$InputFile tLRPC$InputFile, final TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile, final byte[] bArr, final byte[] bArr2, final long j) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.C35885.lambda$fileDidUploaded$1(i, str, tLRPC$InputFile, tLRPC$InputEncryptedFile, bArr, bArr2, j);
                }
            });
            ImageLoader.this.fileProgresses.remove(str);
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidFailedUpload(final String str, final boolean z) {
            DispatchQueue dispatchQueue = Utilities.stageQueue;
            final int i = this.val$currentAccount;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.C35885.this.lambda$fileDidFailedUpload$4(i, str, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$fileDidFailedUpload$3(int i, String str, boolean z) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadFailed, str, Boolean.valueOf(z));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidFailedUpload$4(final int i, final String str, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.C35885.lambda$fileDidFailedUpload$3(i, str, z);
                }
            });
            ImageLoader.this.fileProgresses.remove(str);
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidLoaded(final String str, final File file, final Object obj, final int i) {
            ImageLoader.this.fileProgresses.remove(str);
            final int i2 = this.val$currentAccount;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.C35885.this.lambda$fileDidLoaded$5(file, str, i2, obj, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidLoaded$5(File file, String str, int i, Object obj, int i2) {
            FilePathDatabase.FileMeta fileMetadataFromParent;
            int i3;
            if (file != null && ((str.endsWith(".mp4") || str.endsWith(".jpg")) && (fileMetadataFromParent = FileLoader.getFileMetadataFromParent(i, obj)) != null)) {
                MessageObject messageObject = obj instanceof MessageObject ? (MessageObject) obj : null;
                long j = fileMetadataFromParent.dialogId;
                if (j >= 0) {
                    i3 = 1;
                } else {
                    i3 = ChatObject.isChannelAndNotMegaGroup(MessagesController.getInstance(i).getChat(Long.valueOf(-j))) ? 4 : 2;
                }
                if (SaveToGallerySettingsHelper.needSave(i3, fileMetadataFromParent, messageObject, i)) {
                    AndroidUtilities.addMediaToGallery(file.toString());
                }
            }
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoaded, str, file);
            ImageLoader.this.fileDidLoaded(str, file, i2);
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidFailedLoad(final String str, final int i) {
            ImageLoader.this.fileProgresses.remove(str);
            final int i2 = this.val$currentAccount;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.C35885.this.lambda$fileDidFailedLoad$6(str, i, i2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidFailedLoad$6(String str, int i, int i2) {
            ImageLoader.this.fileDidFailedLoad(str, i);
            NotificationCenter.getInstance(i2).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, str, Integer.valueOf(i));
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileLoadProgressChanged(final FileLoadOperation fileLoadOperation, final String str, final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(str, new long[]{j, j2});
            if (!ImageLoader.this.imageLoadingByUrlPframe.isEmpty() && fileLoadOperation.checkPrefixPreloadFinished()) {
                ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.C35885.this.lambda$fileLoadProgressChanged$7(str, fileLoadOperation);
                    }
                });
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j3 = fileLoadOperation.lastProgressUpdateTime;
            if (j3 == 0 || j3 < elapsedRealtime - 500 || j == 0) {
                fileLoadOperation.lastProgressUpdateTime = elapsedRealtime;
                final int i = this.val$currentAccount;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImageLoader.C35885.lambda$fileLoadProgressChanged$8(i, str, j, j2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileLoadProgressChanged$7(String str, FileLoadOperation fileLoadOperation) {
            CacheImage cacheImage = (CacheImage) ImageLoader.this.imageLoadingByUrlPframe.remove(str);
            if (cacheImage == null) {
                return;
            }
            ImageLoader.this.imageLoadingByUrl.remove(str);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < cacheImage.imageReceiverArray.size(); i++) {
                String str2 = cacheImage.keys.get(i);
                String str3 = cacheImage.filters.get(i);
                int intValue = cacheImage.types.get(i).intValue();
                ImageReceiver imageReceiver = cacheImage.imageReceiverArray.get(i);
                int intValue2 = cacheImage.imageReceiverGuidsArray.get(i).intValue();
                CacheImage cacheImage2 = (CacheImage) ImageLoader.this.imageLoadingByKeys.get(str2);
                if (cacheImage2 == null) {
                    cacheImage2 = new CacheImage();
                    cacheImage2.priority = cacheImage.priority;
                    cacheImage2.secureDocument = cacheImage.secureDocument;
                    cacheImage2.currentAccount = cacheImage.currentAccount;
                    cacheImage2.finalFilePath = fileLoadOperation.getCurrentFile();
                    cacheImage2.parentObject = cacheImage.parentObject;
                    cacheImage2.isPFrame = cacheImage.isPFrame;
                    cacheImage2.key = str2;
                    cacheImage2.imageLocation = cacheImage.imageLocation;
                    cacheImage2.type = intValue;
                    cacheImage2.ext = cacheImage.ext;
                    cacheImage2.encryptionKeyPath = cacheImage.encryptionKeyPath;
                    cacheImage2.cacheTask = new CacheOutTask(cacheImage2);
                    cacheImage2.filter = str3;
                    cacheImage2.imageType = cacheImage.imageType;
                    cacheImage2.cacheType = cacheImage.cacheType;
                    ImageLoader.this.imageLoadingByKeys.put(str2, cacheImage2);
                    arrayList.add(cacheImage2.cacheTask);
                }
                cacheImage2.addImageReceiver(imageReceiver, str2, str3, intValue, intValue2);
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                CacheOutTask cacheOutTask = (CacheOutTask) arrayList.get(i2);
                if (cacheOutTask.cacheImage.type == 1) {
                    ImageLoader.this.cacheThumbOutQueue.postRunnable(cacheOutTask);
                } else {
                    ImageLoader.this.cacheOutQueue.postRunnable(cacheOutTask, cacheOutTask.cacheImage.priority);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$fileLoadProgressChanged$8(int i, String str, long j, long j2) {
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, str, Long.valueOf(j), Long.valueOf(j2));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.ImageLoader$6 */
    /* loaded from: classes4.dex */
    public class C35896 extends BroadcastReceiver {
        C35896() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m105d("file system changed");
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.C35896.this.lambda$onReceive$0();
                }
            };
            if ("android.intent.action.MEDIA_UNMOUNTED".equals(intent.getAction())) {
                AndroidUtilities.runOnUIThread(runnable, 1000L);
            } else {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0() {
            ImageLoader.this.checkMediaPaths();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int sizeOfBitmapDrawable(BitmapDrawable bitmapDrawable) {
        if (bitmapDrawable instanceof AnimatedFileDrawable) {
            AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) bitmapDrawable;
            return Math.max(animatedFileDrawable.getIntrinsicHeight() * bitmapDrawable.getIntrinsicWidth() * 4 * 3, animatedFileDrawable.getRenderingHeight() * animatedFileDrawable.getRenderingWidth() * 4 * 3);
        } else if (bitmapDrawable instanceof RLottieDrawable) {
            return bitmapDrawable.getIntrinsicWidth() * bitmapDrawable.getIntrinsicHeight() * 4 * 2;
        } else {
            return bitmapDrawable.getBitmap().getByteCount();
        }
    }

    public void checkMediaPaths() {
        checkMediaPaths(null);
    }

    public void checkMediaPaths(final Runnable runnable) {
        this.cacheOutQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$checkMediaPaths$1(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkMediaPaths$1(final Runnable runnable) {
        final SparseArray<File> createMediaPaths = createMediaPaths();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.lambda$checkMediaPaths$0(createMediaPaths, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$checkMediaPaths$0(SparseArray sparseArray, Runnable runnable) {
        FileLoader.setMediaDirs(sparseArray);
        if (runnable != null) {
            runnable.run();
        }
    }

    public void addTestWebFile(String str, WebFile webFile) {
        if (str == null || webFile == null) {
            return;
        }
        this.testWebFile.put(str, webFile);
    }

    public void removeTestWebFile(String str) {
        if (str == null) {
            return;
        }
        this.testWebFile.remove(str);
    }

    private static void moveDirectory(File file, final File file2) {
        if (file.exists()) {
            if (file2.exists() || file2.mkdir()) {
                try {
                    Stream convert = C$r8$wrapper$java$util$stream$Stream$VWRP.convert(Files.list(file.toPath()));
                    convert.forEach(new Consumer() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda14
                        @Override // p033j$.util.function.Consumer
                        public final void accept(Object obj) {
                            ImageLoader.lambda$moveDirectory$2(file2, (java.nio.file.Path) obj);
                        }

                        @Override // p033j$.util.function.Consumer
                        public /* synthetic */ Consumer andThen(Consumer consumer) {
                            return Consumer.CC.$default$andThen(this, consumer);
                        }
                    });
                    convert.close();
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$moveDirectory$2(File file, java.nio.file.Path path) {
        File file2 = new File(file, path.getFileName().toString());
        if (Files.isDirectory(path, new LinkOption[0])) {
            moveDirectory(path.toFile(), file2);
            return;
        }
        try {
            Files.move(path, file2.toPath(), new CopyOption[0]);
        } catch (Exception e) {
            FileLog.m102e(e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0166, code lost:
        if (r2.mkdirs() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016c, code lost:
        if (r2.canWrite() == false) goto L54;
     */
    /* JADX WARN: Removed duplicated region for block: B:159:0x037f A[Catch: Exception -> 0x0392, TRY_LEAVE, TryCatch #4 {Exception -> 0x0392, blocks: (B:153:0x0362, B:155:0x0370, B:157:0x0376, B:159:0x037f), top: B:189:0x0362, outer: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03b3 A[Catch: Exception -> 0x03c6, TRY_LEAVE, TryCatch #11 {Exception -> 0x03c6, blocks: (B:163:0x0396, B:165:0x03a4, B:167:0x03aa, B:169:0x03b3), top: B:203:0x0396, outer: #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x01ee A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:212:0x01dc A[EDGE_INSN: B:212:0x01dc->B:87:0x01dc ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b2 A[Catch: Exception -> 0x03d9, TryCatch #9 {Exception -> 0x03d9, blocks: (B:12:0x0054, B:14:0x0061, B:16:0x006f, B:19:0x0077, B:21:0x007e, B:24:0x00ad, B:25:0x00b0, B:27:0x00bc, B:30:0x00c5, B:32:0x00c8, B:36:0x00e9, B:35:0x00cd, B:37:0x00ec, B:54:0x012d, B:73:0x0194, B:75:0x019f, B:77:0x01a7, B:79:0x01b2, B:81:0x01ba, B:83:0x01c2, B:85:0x01ce, B:86:0x01d9, B:87:0x01dc, B:149:0x0357, B:139:0x0315, B:129:0x02d4, B:119:0x0293, B:109:0x0253, B:151:0x035c, B:172:0x03c7, B:162:0x0393, B:176:0x03d5, B:99:0x021f, B:53:0x012a, B:55:0x013c, B:57:0x0144, B:62:0x0155, B:64:0x015b, B:69:0x0168, B:71:0x016e, B:67:0x0162, B:72:0x018d, B:173:0x03cb, B:175:0x03cf, B:140:0x0318, B:142:0x032a, B:144:0x0331, B:146:0x0340, B:130:0x02d7, B:132:0x02e9, B:134:0x02f0, B:136:0x02ff, B:120:0x0296, B:122:0x02a8, B:124:0x02af, B:126:0x02be, B:153:0x0362, B:155:0x0370, B:157:0x0376, B:159:0x037f, B:110:0x0256, B:112:0x0268, B:114:0x026e, B:116:0x027d, B:100:0x0222, B:102:0x0232, B:104:0x0238, B:106:0x023f, B:90:0x01ee, B:92:0x01fe, B:94:0x0204, B:96:0x020b, B:163:0x0396, B:165:0x03a4, B:167:0x03aa, B:169:0x03b3), top: B:199:0x0054, inners: #0, #1, #2, #4, #5, #6, #8, #11 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.util.SparseArray<java.io.File> createMediaPaths() {
        /*
            Method dump skipped, instructions count: 990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.createMediaPaths():android.util.SparseArray");
    }

    private File getPublicStorageDir() {
        File file = ApplicationLoader.applicationContext.getExternalMediaDirs()[0];
        if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
            for (int i = 0; i < ApplicationLoader.applicationContext.getExternalMediaDirs().length; i++) {
                File file2 = ApplicationLoader.applicationContext.getExternalMediaDirs()[i];
                if (file2 != null && file2.getPath().startsWith(SharedConfig.storageCacheDir)) {
                    file = ApplicationLoader.applicationContext.getExternalMediaDirs()[i];
                }
            }
        }
        return file;
    }

    private boolean canMoveFiles(File file, File file2, int i) {
        File file3;
        File file4;
        byte[] bArr;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                if (i == 0) {
                    file3 = new File(file, "000000000_999999_temp.f");
                    file4 = new File(file2, "000000000_999999.f");
                } else {
                    if (i != 3 && i != 5 && i != 6) {
                        if (i == 1) {
                            file3 = new File(file, "000000000_999999_temp.f");
                            file4 = new File(file2, "000000000_999999.f");
                        } else if (i == 2) {
                            file3 = new File(file, "000000000_999999_temp.f");
                            file4 = new File(file2, "000000000_999999.f");
                        } else {
                            file4 = null;
                            file3 = null;
                        }
                    }
                    file3 = new File(file, "000000000_999999_temp.f");
                    file4 = new File(file2, "000000000_999999.f");
                }
                bArr = new byte[1024];
                file3.createNewFile();
                randomAccessFile = new RandomAccessFile(file3, "rws");
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            randomAccessFile.write(bArr);
            randomAccessFile.close();
            boolean renameTo = file3.renameTo(file4);
            file3.delete();
            file4.delete();
            return renameTo;
        } catch (Exception e2) {
            e = e2;
            randomAccessFile2 = randomAccessFile;
            FileLog.m102e(e);
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                    return false;
                } catch (Exception e3) {
                    FileLog.m102e(e3);
                    return false;
                }
            }
            return false;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (Exception e4) {
                    FileLog.m102e(e4);
                }
            }
            throw th;
        }
    }

    public Float getFileProgress(String str) {
        long[] jArr;
        if (str == null || (jArr = this.fileProgresses.get(str)) == null) {
            return null;
        }
        if (jArr[1] == 0) {
            return Float.valueOf((float) BitmapDescriptorFactory.HUE_RED);
        }
        return Float.valueOf(Math.min(1.0f, ((float) jArr[0]) / ((float) jArr[1])));
    }

    public long[] getFileProgressSizes(String str) {
        if (str == null) {
            return null;
        }
        return this.fileProgresses.get(str);
    }

    public String getReplacedKey(String str) {
        if (str == null) {
            return null;
        }
        return this.replacedBitmaps.get(str);
    }

    private void performReplace(String str, String str2) {
        LruCache<BitmapDrawable> lruCache = this.memCache;
        BitmapDrawable bitmapDrawable = lruCache.get(str);
        if (bitmapDrawable == null) {
            lruCache = this.smallImagesMemCache;
            bitmapDrawable = lruCache.get(str);
        }
        this.replacedBitmaps.put(str, str2);
        if (bitmapDrawable != null) {
            BitmapDrawable bitmapDrawable2 = lruCache.get(str2);
            boolean z = false;
            if (bitmapDrawable2 != null && bitmapDrawable2.getBitmap() != null && bitmapDrawable.getBitmap() != null) {
                Bitmap bitmap = bitmapDrawable2.getBitmap();
                Bitmap bitmap2 = bitmapDrawable.getBitmap();
                if (bitmap.getWidth() > bitmap2.getWidth() || bitmap.getHeight() > bitmap2.getHeight()) {
                    z = true;
                }
            }
            if (!z) {
                this.ignoreRemoval = str;
                lruCache.remove(str);
                lruCache.put(str2, bitmapDrawable);
                this.ignoreRemoval = null;
            } else {
                lruCache.remove(str);
            }
        }
        Integer num = this.bitmapUseCounts.get(str);
        if (num != null) {
            this.bitmapUseCounts.put(str2, num);
            this.bitmapUseCounts.remove(str);
        }
    }

    public void incrementUseCount(String str) {
        Integer num = this.bitmapUseCounts.get(str);
        if (num == null) {
            this.bitmapUseCounts.put(str, 1);
        } else {
            this.bitmapUseCounts.put(str, Integer.valueOf(num.intValue() + 1));
        }
    }

    public boolean decrementUseCount(String str) {
        Integer num = this.bitmapUseCounts.get(str);
        if (num == null) {
            return true;
        }
        if (num.intValue() == 1) {
            this.bitmapUseCounts.remove(str);
            return true;
        }
        this.bitmapUseCounts.put(str, Integer.valueOf(num.intValue() - 1));
        return false;
    }

    public void removeImage(String str) {
        this.bitmapUseCounts.remove(str);
        this.memCache.remove(str);
        this.smallImagesMemCache.remove(str);
    }

    public boolean isInMemCache(String str, boolean z) {
        return z ? getFromLottieCache(str) != null : getFromMemCache(str) != null;
    }

    public void clearMemory() {
        this.smallImagesMemCache.evictAll();
        this.memCache.evictAll();
        this.lottieMemCache.evictAll();
    }

    private void removeFromWaitingForThumb(int i, ImageReceiver imageReceiver) {
        String str = this.waitingForQualityThumbByTag.get(i);
        if (str != null) {
            ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(str);
            if (thumbGenerateInfo != null) {
                int indexOf = thumbGenerateInfo.imageReceiverArray.indexOf(imageReceiver);
                if (indexOf >= 0) {
                    thumbGenerateInfo.imageReceiverArray.remove(indexOf);
                    thumbGenerateInfo.imageReceiverGuidsArray.remove(indexOf);
                }
                if (thumbGenerateInfo.imageReceiverArray.isEmpty()) {
                    this.waitingForQualityThumb.remove(str);
                }
            }
            this.waitingForQualityThumbByTag.remove(i);
        }
    }

    public void changeFileLoadingPriorityForImageReceiver(final ImageReceiver imageReceiver) {
        if (imageReceiver == null) {
            return;
        }
        final int fileLoadingPriority = imageReceiver.getFileLoadingPriority();
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$changeFileLoadingPriorityForImageReceiver$3(imageReceiver, fileLoadingPriority);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeFileLoadingPriorityForImageReceiver$3(ImageReceiver imageReceiver, int i) {
        CacheImage cacheImage;
        int i2 = 0;
        while (true) {
            int i3 = 3;
            if (i2 >= 3) {
                return;
            }
            if (i2 == 0) {
                i3 = 1;
            } else if (i2 == 1) {
                i3 = 0;
            }
            int tag = imageReceiver.getTag(i3);
            if (tag != 0 && (cacheImage = this.imageLoadingByTag.get(tag)) != null) {
                cacheImage.changePriority(i);
            }
            i2++;
        }
    }

    public void cancelLoadingForImageReceiver(final ImageReceiver imageReceiver, final boolean z) {
        if (imageReceiver == null) {
            return;
        }
        ArrayList<Runnable> loadingOperations = imageReceiver.getLoadingOperations();
        if (!loadingOperations.isEmpty()) {
            for (int i = 0; i < loadingOperations.size(); i++) {
                this.imageLoadQueue.cancelRunnable(loadingOperations.get(i));
            }
            loadingOperations.clear();
        }
        imageReceiver.addLoadingImageRunnable(null);
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$cancelLoadingForImageReceiver$4(z, imageReceiver);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadingForImageReceiver$4(boolean z, ImageReceiver imageReceiver) {
        int i = 0;
        while (true) {
            int i2 = 3;
            if (i >= 3) {
                return;
            }
            if (i > 0 && !z) {
                return;
            }
            if (i == 0) {
                i2 = 1;
            } else if (i == 1) {
                i2 = 0;
            }
            int tag = imageReceiver.getTag(i2);
            if (tag != 0) {
                if (i == 0) {
                    removeFromWaitingForThumb(tag, imageReceiver);
                }
                CacheImage cacheImage = this.imageLoadingByTag.get(tag);
                if (cacheImage != null) {
                    cacheImage.removeImageReceiver(imageReceiver);
                }
            }
            i++;
        }
    }

    public BitmapDrawable getImageFromMemory(TLObject tLObject, String str, String str2) {
        String str3 = null;
        if (tLObject == null && str == null) {
            return null;
        }
        if (str != null) {
            str3 = Utilities.MD5(str);
        } else if (tLObject instanceof TLRPC$FileLocation) {
            TLRPC$FileLocation tLRPC$FileLocation = (TLRPC$FileLocation) tLObject;
            str3 = tLRPC$FileLocation.volume_id + "_" + tLRPC$FileLocation.local_id;
        } else if (tLObject instanceof TLRPC$Document) {
            TLRPC$Document tLRPC$Document = (TLRPC$Document) tLObject;
            str3 = tLRPC$Document.dc_id + "_" + tLRPC$Document.f1610id;
        } else if (tLObject instanceof SecureDocument) {
            SecureDocument secureDocument = (SecureDocument) tLObject;
            str3 = secureDocument.secureFile.dc_id + "_" + secureDocument.secureFile.f1733id;
        } else if (tLObject instanceof WebFile) {
            str3 = Utilities.MD5(((WebFile) tLObject).url);
        }
        if (str2 != null) {
            str3 = str3 + "@" + str2;
        }
        return getFromMemCache(str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: replaceImageInCacheInternal */
    public void lambda$replaceImageInCache$5(String str, String str2, ImageLocation imageLocation) {
        ArrayList<String> filterKeys;
        for (int i = 0; i < 2; i++) {
            if (i == 0) {
                filterKeys = this.memCache.getFilterKeys(str);
            } else {
                filterKeys = this.smallImagesMemCache.getFilterKeys(str);
            }
            if (filterKeys != null) {
                for (int i2 = 0; i2 < filterKeys.size(); i2++) {
                    String str3 = filterKeys.get(i2);
                    String str4 = str + "@" + str3;
                    String str5 = str2 + "@" + str3;
                    performReplace(str4, str5);
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReplacedPhotoInMemCache, str4, str5, imageLocation);
                }
            } else {
                performReplace(str, str2);
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReplacedPhotoInMemCache, str, str2, imageLocation);
            }
        }
    }

    public void replaceImageInCache(final String str, final String str2, final ImageLocation imageLocation, boolean z) {
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    ImageLoader.this.lambda$replaceImageInCache$5(str, str2, imageLocation);
                }
            });
        } else {
            lambda$replaceImageInCache$5(str, str2, imageLocation);
        }
    }

    public void putImageToCache(BitmapDrawable bitmapDrawable, String str, boolean z) {
        if (z) {
            this.smallImagesMemCache.put(str, bitmapDrawable);
        } else {
            this.memCache.put(str, bitmapDrawable);
        }
    }

    private void generateThumb(int i, File file, ThumbGenerateInfo thumbGenerateInfo) {
        if ((i != 0 && i != 2 && i != 3) || file == null || thumbGenerateInfo == null) {
            return;
        }
        if (this.thumbGenerateTasks.get(FileLoader.getAttachFileName(thumbGenerateInfo.parentDocument)) == null) {
            this.thumbGeneratingQueue.postRunnable(new ThumbGenerateTask(i, file, thumbGenerateInfo));
        }
    }

    public void cancelForceLoadingForImageReceiver(ImageReceiver imageReceiver) {
        final String imageKey;
        if (imageReceiver == null || (imageKey = imageReceiver.getImageKey()) == null) {
            return;
        }
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$cancelForceLoadingForImageReceiver$6(imageKey);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelForceLoadingForImageReceiver$6(String str) {
        this.forceLoadingImages.remove(str);
    }

    private void createLoadOperationForImageReceiver(final ImageReceiver imageReceiver, final String str, final String str2, final String str3, final ImageLocation imageLocation, final String str4, final long j, final int i, final int i2, final int i3, final int i4) {
        if (imageReceiver == null || str2 == null || str == null || imageLocation == null) {
            return;
        }
        int tag = imageReceiver.getTag(i2);
        if (tag == 0) {
            tag = this.lastImageNum;
            imageReceiver.setTag(tag, i2);
            int i5 = this.lastImageNum + 1;
            this.lastImageNum = i5;
            if (i5 == Integer.MAX_VALUE) {
                this.lastImageNum = 0;
            }
        }
        final int i6 = tag;
        final boolean isNeedsQualityThumb = imageReceiver.isNeedsQualityThumb();
        final Object parentObject = imageReceiver.getParentObject();
        final TLRPC$Document qualityThumbDocument = imageReceiver.getQualityThumbDocument();
        final boolean isShouldGenerateQualityThumb = imageReceiver.isShouldGenerateQualityThumb();
        final int currentAccount = imageReceiver.getCurrentAccount();
        final boolean z = i2 == 0 && imageReceiver.isCurrentKeyQuality();
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$createLoadOperationForImageReceiver$7(i3, str2, str, i6, imageReceiver, i4, str4, i2, imageLocation, z, parentObject, currentAccount, qualityThumbDocument, isNeedsQualityThumb, isShouldGenerateQualityThumb, str3, i, j);
            }
        };
        this.imageLoadQueue.postRunnable(runnable, imageReceiver.getFileLoadingPriority() == 0 ? 0L : 1L);
        imageReceiver.addLoadingImageRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0328, code lost:
        if (r7 == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:198:0x0401, code lost:
        if (r7.equals(r8) != false) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:242:0x04d8, code lost:
        if (r10.exists() == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01c2, code lost:
        if (r8.exists() == false) goto L288;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x021e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$createLoadOperationForImageReceiver$7(int r25, java.lang.String r26, java.lang.String r27, int r28, org.telegram.messenger.ImageReceiver r29, int r30, java.lang.String r31, int r32, org.telegram.messenger.ImageLocation r33, boolean r34, java.lang.Object r35, int r36, org.telegram.tgnet.TLRPC$Document r37, boolean r38, boolean r39, java.lang.String r40, int r41, long r42) {
        /*
            Method dump skipped, instructions count: 1707
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.lambda$createLoadOperationForImageReceiver$7(int, java.lang.String, java.lang.String, int, org.telegram.messenger.ImageReceiver, int, java.lang.String, int, org.telegram.messenger.ImageLocation, boolean, java.lang.Object, int, org.telegram.tgnet.TLRPC$Document, boolean, boolean, java.lang.String, int, long):void");
    }

    public void preloadArtwork(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$preloadArtwork$8(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadArtwork$8(String str) {
        String httpUrlExtension = getHttpUrlExtension(str, "jpg");
        String str2 = Utilities.MD5(str) + "." + httpUrlExtension;
        File file = new File(FileLoader.getDirectory(4), str2);
        if (file.exists()) {
            return;
        }
        ImageLocation forPath = ImageLocation.getForPath(str);
        CacheImage cacheImage = new CacheImage();
        cacheImage.type = 1;
        cacheImage.key = Utilities.MD5(str);
        cacheImage.filter = null;
        cacheImage.imageLocation = forPath;
        cacheImage.ext = httpUrlExtension;
        cacheImage.parentObject = null;
        int i = forPath.imageType;
        if (i != 0) {
            cacheImage.imageType = i;
        }
        cacheImage.url = str2;
        this.imageLoadingByUrl.put(str2, cacheImage);
        String MD5 = Utilities.MD5(forPath.path);
        cacheImage.tempFilePath = new File(FileLoader.getDirectory(4), MD5 + "_temp.jpg");
        cacheImage.finalFilePath = file;
        ArtworkLoadTask artworkLoadTask = new ArtworkLoadTask(cacheImage);
        cacheImage.artworkTask = artworkLoadTask;
        this.artworkTasks.add(artworkLoadTask);
        runArtworkTasks(false);
    }

    public void loadImageForImageReceiver(ImageReceiver imageReceiver) {
        loadImageForImageReceiver(imageReceiver, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0431 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0447 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0462 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0482 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:254:0x04a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04ba  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x04fa  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0501  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x056b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0194  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void loadImageForImageReceiver(org.telegram.messenger.ImageReceiver r37, java.util.List<org.telegram.messenger.ImageReceiver> r38) {
        /*
            Method dump skipped, instructions count: 1449
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.loadImageForImageReceiver(org.telegram.messenger.ImageReceiver, java.util.List):void");
    }

    private Drawable findInPreloadImageReceivers(String str, List<ImageReceiver> list) {
        if (list == null) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            ImageReceiver imageReceiver = list.get(i);
            if (str.equals(imageReceiver.getImageKey())) {
                return imageReceiver.getImageDrawable();
            }
            if (str.equals(imageReceiver.getMediaKey())) {
                return imageReceiver.getMediaDrawable();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BitmapDrawable getFromLottieCache(String str) {
        BitmapDrawable bitmapDrawable = this.lottieMemCache.get(str);
        if ((bitmapDrawable instanceof AnimatedFileDrawable) && ((AnimatedFileDrawable) bitmapDrawable).isRecycled()) {
            this.lottieMemCache.remove(str);
            return null;
        }
        return bitmapDrawable;
    }

    private boolean useLottieMemCache(ImageLocation imageLocation, String str) {
        if (str.endsWith("_firstframe") || str.endsWith("_lastframe")) {
            return false;
        }
        return (imageLocation != null && (MessageObject.isAnimatedStickerDocument(imageLocation.document, true) || imageLocation.imageType == 1 || MessageObject.isVideoSticker(imageLocation.document))) || isAnimatedAvatar(str);
    }

    public boolean hasLottieMemCache(String str) {
        LruCache<BitmapDrawable> lruCache = this.lottieMemCache;
        return lruCache != null && lruCache.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void httpFileLoadError(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$httpFileLoadError$9(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$httpFileLoadError$9(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        HttpImageTask httpImageTask = cacheImage.httpTask;
        if (httpImageTask != null) {
            HttpImageTask httpImageTask2 = new HttpImageTask(httpImageTask.cacheImage, httpImageTask.imageSize);
            cacheImage.httpTask = httpImageTask2;
            this.httpTasks.add(httpImageTask2);
        }
        runHttpTasks(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void artworkLoadError(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$artworkLoadError$10(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$artworkLoadError$10(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        ArtworkLoadTask artworkLoadTask = cacheImage.artworkTask;
        if (artworkLoadTask != null) {
            ArtworkLoadTask artworkLoadTask2 = new ArtworkLoadTask(artworkLoadTask.cacheImage);
            cacheImage.artworkTask = artworkLoadTask2;
            this.artworkTasks.add(artworkLoadTask2);
        }
        runArtworkTasks(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fileDidLoaded(final String str, final File file, final int i) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$fileDidLoaded$11(str, i, file);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fileDidLoaded$11(String str, int i, File file) {
        ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(str);
        if (thumbGenerateInfo != null && thumbGenerateInfo.parentDocument != null) {
            generateThumb(i, file, thumbGenerateInfo);
            this.waitingForQualityThumb.remove(str);
        }
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        this.imageLoadingByUrl.remove(str);
        this.imageLoadingByUrlPframe.remove(str);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < cacheImage.imageReceiverArray.size(); i2++) {
            String str2 = cacheImage.keys.get(i2);
            String str3 = cacheImage.filters.get(i2);
            int intValue = cacheImage.types.get(i2).intValue();
            ImageReceiver imageReceiver = cacheImage.imageReceiverArray.get(i2);
            int intValue2 = cacheImage.imageReceiverGuidsArray.get(i2).intValue();
            CacheImage cacheImage2 = this.imageLoadingByKeys.get(str2);
            if (cacheImage2 == null) {
                cacheImage2 = new CacheImage();
                cacheImage2.priority = cacheImage.priority;
                cacheImage2.secureDocument = cacheImage.secureDocument;
                cacheImage2.currentAccount = cacheImage.currentAccount;
                cacheImage2.finalFilePath = file;
                cacheImage2.parentObject = cacheImage.parentObject;
                cacheImage2.isPFrame = cacheImage.isPFrame;
                cacheImage2.key = str2;
                cacheImage2.cacheType = cacheImage.cacheType;
                cacheImage2.imageLocation = cacheImage.imageLocation;
                cacheImage2.type = intValue;
                cacheImage2.ext = cacheImage.ext;
                cacheImage2.encryptionKeyPath = cacheImage.encryptionKeyPath;
                cacheImage2.cacheTask = new CacheOutTask(cacheImage2);
                cacheImage2.filter = str3;
                cacheImage2.imageType = cacheImage.imageType;
                this.imageLoadingByKeys.put(str2, cacheImage2);
                arrayList.add(cacheImage2.cacheTask);
            }
            cacheImage2.addImageReceiver(imageReceiver, str2, str3, intValue, intValue2);
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            CacheOutTask cacheOutTask = (CacheOutTask) arrayList.get(i3);
            if (cacheOutTask.cacheImage.type != 1) {
                this.cacheOutQueue.postRunnable(cacheOutTask, cacheOutTask.cacheImage.priority);
            } else {
                this.cacheThumbOutQueue.postRunnable(cacheOutTask);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fileDidFailedLoad(final String str, int i) {
        if (i == 1) {
            return;
        }
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$fileDidFailedLoad$12(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fileDidFailedLoad$12(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage != null) {
            cacheImage.setImageAndClear(null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runHttpTasks(boolean z) {
        if (z) {
            this.currentHttpTasksCount--;
        }
        while (this.currentHttpTasksCount < 4 && !this.httpTasks.isEmpty()) {
            HttpImageTask poll = this.httpTasks.poll();
            if (poll != null) {
                poll.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                this.currentHttpTasksCount++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runArtworkTasks(boolean z) {
        if (z) {
            this.currentArtworkTasksCount--;
        }
        while (this.currentArtworkTasksCount < 4 && !this.artworkTasks.isEmpty()) {
            try {
                this.artworkTasks.poll().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                this.currentArtworkTasksCount++;
            } catch (Throwable unused) {
                runArtworkTasks(false);
            }
        }
    }

    public boolean isLoadingHttpFile(String str) {
        return this.httpFileLoadTasksByKeys.containsKey(str);
    }

    public static String getHttpFileName(String str) {
        return Utilities.MD5(str);
    }

    public static File getHttpFilePath(String str, String str2) {
        String httpUrlExtension = getHttpUrlExtension(str, str2);
        File directory = FileLoader.getDirectory(4);
        return new File(directory, Utilities.MD5(str) + "." + httpUrlExtension);
    }

    public void loadHttpFile(String str, String str2, int i) {
        if (str == null || str.length() == 0 || this.httpFileLoadTasksByKeys.containsKey(str)) {
            return;
        }
        String httpUrlExtension = getHttpUrlExtension(str, str2);
        File directory = FileLoader.getDirectory(4);
        File file = new File(directory, Utilities.MD5(str) + "_temp." + httpUrlExtension);
        file.delete();
        HttpFileTask httpFileTask = new HttpFileTask(str, file, httpUrlExtension, i);
        this.httpFileLoadTasks.add(httpFileTask);
        this.httpFileLoadTasksByKeys.put(str, httpFileTask);
        runHttpFileLoadTasks(null, 0);
    }

    public void cancelLoadHttpFile(String str) {
        HttpFileTask httpFileTask = this.httpFileLoadTasksByKeys.get(str);
        if (httpFileTask != null) {
            httpFileTask.cancel(true);
            this.httpFileLoadTasksByKeys.remove(str);
            this.httpFileLoadTasks.remove(httpFileTask);
        }
        Runnable runnable = this.retryHttpsTasks.get(str);
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        runHttpFileLoadTasks(null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runHttpFileLoadTasks(final HttpFileTask httpFileTask, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.this.lambda$runHttpFileLoadTasks$14(httpFileTask, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runHttpFileLoadTasks$14(HttpFileTask httpFileTask, int i) {
        if (httpFileTask != null) {
            this.currentHttpFileLoadTasksCount--;
        }
        if (httpFileTask != null) {
            if (i == 0 && httpFileTask.isAppUpdate) {
                this.fileProgresses.remove(httpFileTask.url);
            } else if (i == 1) {
                if (!httpFileTask.canRetry) {
                    this.httpFileLoadTasksByKeys.remove(httpFileTask.url);
                    (httpFileTask.isAppUpdate ? NotificationCenter.getGlobalInstance() : NotificationCenter.getInstance(httpFileTask.currentAccount)).lambda$postNotificationNameOnUIThread$1(NotificationCenter.httpFileDidFailedLoad, httpFileTask.url, 0);
                } else {
                    final HttpFileTask httpFileTask2 = new HttpFileTask(httpFileTask.url, httpFileTask.tempFile, httpFileTask.ext, httpFileTask.currentAccount);
                    Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda10
                        @Override // java.lang.Runnable
                        public final void run() {
                            ImageLoader.this.lambda$runHttpFileLoadTasks$13(httpFileTask2);
                        }
                    };
                    this.retryHttpsTasks.put(httpFileTask.url, runnable);
                    AndroidUtilities.runOnUIThread(runnable, 1000L);
                }
            } else if (i == 2) {
                this.httpFileLoadTasksByKeys.remove(httpFileTask.url);
                File file = new File(FileLoader.getDirectory(4), Utilities.MD5(httpFileTask.url) + "." + httpFileTask.ext);
                if (!httpFileTask.tempFile.renameTo(file)) {
                    file = httpFileTask.tempFile;
                }
                (httpFileTask.isAppUpdate ? NotificationCenter.getGlobalInstance() : NotificationCenter.getInstance(httpFileTask.currentAccount)).lambda$postNotificationNameOnUIThread$1(NotificationCenter.httpFileDidLoad, httpFileTask.url, file.toString());
            }
        }
        while (this.currentHttpFileLoadTasksCount < 2 && !this.httpFileLoadTasks.isEmpty()) {
            this.httpFileLoadTasks.poll().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            this.currentHttpFileLoadTasksCount++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runHttpFileLoadTasks$13(HttpFileTask httpFileTask) {
        this.httpFileLoadTasks.add(httpFileTask);
        runHttpFileLoadTasks(null, 0);
    }

    public static boolean shouldSendImageAsDocument(String str, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (str == null && uri != null && uri.getScheme() != null) {
            if (uri.getScheme().contains("file")) {
                str = uri.getPath();
            } else {
                try {
                    str = AndroidUtilities.getPath(uri);
                } catch (Throwable th) {
                    FileLog.m102e(th);
                }
            }
        }
        if (str != null) {
            BitmapFactory.decodeFile(str, options);
        } else if (uri != null) {
            try {
                InputStream openInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                BitmapFactory.decodeStream(openInputStream, null, options);
                openInputStream.close();
            } catch (Throwable th2) {
                FileLog.m102e(th2);
                return false;
            }
        }
        float f = options.outWidth;
        float f2 = options.outHeight;
        return f / f2 > 10.0f || f2 / f > 10.0f;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(30:1|(29:6|(1:8)(2:163|(2:167|168))|9|10|(1:12)(1:(26:156|157|158|14|(1:16)(1:154)|17|(1:19)|20|(3:22|(2:23|(1:25)(1:26))|27)|28|(1:30)|31|32|33|(4:37|38|40|41)|49|(6:51|(1:53)|54|55|(2:(1:58)|59)|(3:61|62|(4:64|(1:66)|67|(3:69|70|71)(1:74))(1:75))(2:96|(7:98|99|(5:106|107|(1:109)|110|(5:112|113|102|103|104))|101|102|103|104)(1:131)))|134|135|136|(5:138|(1:140)(1:146)|141|(1:143)(1:145)|144)|147|(1:149)|55|(0)|(0)(0)))|13|14|(0)(0)|17|(0)|20|(0)|28|(0)|31|32|33|(5:35|37|38|40|41)|49|(0)|134|135|136|(0)|147|(0)|55|(0)|(0)(0))|172|10|(0)(0)|13|14|(0)(0)|17|(0)|20|(0)|28|(0)|31|32|33|(0)|49|(0)|134|135|136|(0)|147|(0)|55|(0)|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00cf, code lost:
        if (r9 == null) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b7 A[Catch: all -> 0x00ee, TRY_LEAVE, TryCatch #11 {all -> 0x00ee, blocks: (B:48:0x00a9, B:50:0x00b7, B:55:0x00d1, B:59:0x00d9, B:61:0x00e3, B:65:0x00f0), top: B:166:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00e3 A[Catch: all -> 0x00ee, TryCatch #11 {all -> 0x00ee, blocks: (B:48:0x00a9, B:50:0x00b7, B:55:0x00d1, B:59:0x00d9, B:61:0x00e3, B:65:0x00f0), top: B:166:0x00a9 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ff A[Catch: all -> 0x0133, TryCatch #3 {all -> 0x0133, blocks: (B:66:0x00f5, B:68:0x00ff, B:72:0x010e, B:76:0x011a, B:77:0x011d, B:79:0x0127), top: B:149:0x00f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0127 A[Catch: all -> 0x0133, TRY_LEAVE, TryCatch #3 {all -> 0x0133, blocks: (B:66:0x00f5, B:68:0x00ff, B:72:0x010e, B:76:0x011a, B:77:0x011d, B:79:0x0127), top: B:149:0x00f5 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x01dc -> B:161:0x01f5). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap loadBitmap(java.lang.String r17, android.net.Uri r18, float r19, float r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.loadBitmap(java.lang.String, android.net.Uri, float, float, boolean):android.graphics.Bitmap");
    }

    public static void fillPhotoSizeWithBytes(TLRPC$PhotoSize tLRPC$PhotoSize) {
        if (tLRPC$PhotoSize != null) {
            byte[] bArr = tLRPC$PhotoSize.bytes;
            if (bArr == null || bArr.length == 0) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tLRPC$PhotoSize, true), "r");
                    if (((int) randomAccessFile.length()) < 20000) {
                        byte[] bArr2 = new byte[(int) randomAccessFile.length()];
                        tLRPC$PhotoSize.bytes = bArr2;
                        randomAccessFile.readFully(bArr2, 0, bArr2.length);
                    }
                } catch (Throwable th) {
                    FileLog.m102e(th);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static org.telegram.tgnet.TLRPC$PhotoSize scaleAndSaveImageInternal(org.telegram.tgnet.TLRPC$PhotoSize r2, android.graphics.Bitmap r3, android.graphics.Bitmap.CompressFormat r4, boolean r5, int r6, int r7, float r8, float r9, float r10, int r11, boolean r12, boolean r13, boolean r14) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.ImageLoader.scaleAndSaveImageInternal(org.telegram.tgnet.TLRPC$PhotoSize, android.graphics.Bitmap, android.graphics.Bitmap$CompressFormat, boolean, int, int, float, float, float, int, boolean, boolean, boolean):org.telegram.tgnet.TLRPC$PhotoSize");
    }

    public static TLRPC$PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, int i, boolean z) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, 0, 0, false);
    }

    public static TLRPC$PhotoSize scaleAndSaveImage(TLRPC$PhotoSize tLRPC$PhotoSize, Bitmap bitmap, float f, float f2, int i, boolean z, boolean z2) {
        return scaleAndSaveImage(tLRPC$PhotoSize, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, 0, 0, z2);
    }

    public static TLRPC$PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, int i, boolean z, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, i2, i3, false);
    }

    public static TLRPC$PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, boolean z, int i, boolean z2, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, z, f, f2, i, z2, i2, i3, false);
    }

    public static TLRPC$PhotoSize scaleAndSaveImage(Bitmap bitmap, Bitmap.CompressFormat compressFormat, float f, float f2, int i, boolean z, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, compressFormat, false, f, f2, i, z, i2, i3, false);
    }

    public static TLRPC$PhotoSize scaleAndSaveImage(TLRPC$PhotoSize tLRPC$PhotoSize, Bitmap bitmap, Bitmap.CompressFormat compressFormat, boolean z, float f, float f2, int i, boolean z2, int i2, int i3, boolean z3) {
        boolean z4;
        float f3;
        float f4;
        int i4;
        float max;
        if (bitmap == null) {
            return null;
        }
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        if (width != BitmapDescriptorFactory.HUE_RED && height != BitmapDescriptorFactory.HUE_RED) {
            float max2 = Math.max(width / f, height / f2);
            if (i2 == 0 || i3 == 0 || (width >= i2 && height >= i3)) {
                z4 = false;
                f3 = max2;
            } else {
                if (i4 >= 0 || height <= i3) {
                    if (width > f4) {
                        float f5 = i3;
                        if (height < f5) {
                            max = height / f5;
                        }
                    }
                    max = Math.max(width / f4, height / i3);
                } else {
                    max = width / f4;
                }
                z4 = true;
                f3 = max;
            }
            int i5 = (int) (width / f3);
            int i6 = (int) (height / f3);
            if (i6 != 0 && i5 != 0) {
                try {
                    return scaleAndSaveImageInternal(tLRPC$PhotoSize, bitmap, compressFormat, z, i5, i6, width, height, f3, i, z2, z4, z3);
                } catch (Throwable th) {
                    FileLog.m102e(th);
                    getInstance().clearMemory();
                    System.gc();
                    try {
                        return scaleAndSaveImageInternal(tLRPC$PhotoSize, bitmap, compressFormat, z, i5, i6, width, height, f3, i, z2, z4, z3);
                    } catch (Throwable th2) {
                        FileLog.m102e(th2);
                    }
                }
            }
        }
        return null;
    }

    public static String getHttpUrlExtension(String str, String str2) {
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        if (!TextUtils.isEmpty(lastPathSegment) && lastPathSegment.length() > 1) {
            str = lastPathSegment;
        }
        int lastIndexOf = str.lastIndexOf(46);
        String substring = lastIndexOf != -1 ? str.substring(lastIndexOf + 1) : null;
        return (substring == null || substring.length() == 0 || substring.length() > 4) ? str2 : substring;
    }

    public static void saveMessageThumbs(TLRPC$Message tLRPC$Message) {
        TLRPC$PhotoSize findPhotoCachedSize;
        byte[] bArr;
        TLRPC$PhotoSize tLRPC$TL_photoSize_layer127;
        byte[] bArr2;
        if (tLRPC$Message.media == null || (findPhotoCachedSize = findPhotoCachedSize(tLRPC$Message)) == null || (bArr = findPhotoCachedSize.bytes) == null || bArr.length == 0) {
            return;
        }
        TLRPC$FileLocation tLRPC$FileLocation = findPhotoCachedSize.location;
        if (tLRPC$FileLocation == null || (tLRPC$FileLocation instanceof TLRPC$TL_fileLocationUnavailable)) {
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated = new TLRPC$TL_fileLocationToBeDeprecated();
            findPhotoCachedSize.location = tLRPC$TL_fileLocationToBeDeprecated;
            tLRPC$TL_fileLocationToBeDeprecated.volume_id = -2147483648L;
            tLRPC$TL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
        }
        int i = 0;
        if (findPhotoCachedSize.f1633h <= 50 && findPhotoCachedSize.f1634w <= 50) {
            tLRPC$TL_photoSize_layer127 = new TLRPC$TL_photoStrippedSize();
            tLRPC$TL_photoSize_layer127.location = findPhotoCachedSize.location;
            tLRPC$TL_photoSize_layer127.bytes = findPhotoCachedSize.bytes;
            tLRPC$TL_photoSize_layer127.f1633h = findPhotoCachedSize.f1633h;
            tLRPC$TL_photoSize_layer127.f1634w = findPhotoCachedSize.f1634w;
        } else {
            boolean z = true;
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(findPhotoCachedSize, true);
            if (MessageObject.shouldEncryptPhotoOrVideo(UserConfig.selectedAccount, tLRPC$Message)) {
                pathToAttach = new File(pathToAttach.getAbsolutePath() + ".enc");
            } else {
                z = false;
            }
            if (!pathToAttach.exists()) {
                if (z) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(FileLoader.getInternalCacheDir(), pathToAttach.getName() + ".key"), "rws");
                        long length = randomAccessFile.length();
                        byte[] bArr3 = new byte[32];
                        byte[] bArr4 = new byte[16];
                        if (length > 0 && length % 48 == 0) {
                            randomAccessFile.read(bArr3, 0, 32);
                            randomAccessFile.read(bArr4, 0, 16);
                        } else {
                            Utilities.random.nextBytes(bArr3);
                            Utilities.random.nextBytes(bArr4);
                            randomAccessFile.write(bArr3);
                            randomAccessFile.write(bArr4);
                        }
                        randomAccessFile.close();
                        Utilities.aesCtrDecryptionByteArray(findPhotoCachedSize.bytes, bArr3, bArr4, 0, bArr2.length, 0);
                    } catch (Exception e) {
                        FileLog.m102e(e);
                    }
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(pathToAttach, "rws");
                randomAccessFile2.write(findPhotoCachedSize.bytes);
                randomAccessFile2.close();
            }
            tLRPC$TL_photoSize_layer127 = new TLRPC$TL_photoSize_layer127();
            tLRPC$TL_photoSize_layer127.f1634w = findPhotoCachedSize.f1634w;
            tLRPC$TL_photoSize_layer127.f1633h = findPhotoCachedSize.f1633h;
            tLRPC$TL_photoSize_layer127.location = findPhotoCachedSize.location;
            tLRPC$TL_photoSize_layer127.size = findPhotoCachedSize.size;
            tLRPC$TL_photoSize_layer127.type = findPhotoCachedSize.type;
        }
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$Message.media;
        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaPhoto) {
            int size = tLRPC$MessageMedia.photo.sizes.size();
            while (i < size) {
                if (tLRPC$Message.media.photo.sizes.get(i) instanceof TLRPC$TL_photoCachedSize) {
                    tLRPC$Message.media.photo.sizes.set(i, tLRPC$TL_photoSize_layer127);
                    return;
                }
                i++;
            }
        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaDocument) {
            int size2 = tLRPC$MessageMedia.document.thumbs.size();
            while (i < size2) {
                if (tLRPC$Message.media.document.thumbs.get(i) instanceof TLRPC$TL_photoCachedSize) {
                    tLRPC$Message.media.document.thumbs.set(i, tLRPC$TL_photoSize_layer127);
                    return;
                }
                i++;
            }
        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaWebPage) {
            int size3 = tLRPC$MessageMedia.webpage.photo.sizes.size();
            while (i < size3) {
                if (tLRPC$Message.media.webpage.photo.sizes.get(i) instanceof TLRPC$TL_photoCachedSize) {
                    tLRPC$Message.media.webpage.photo.sizes.set(i, tLRPC$TL_photoSize_layer127);
                    return;
                }
                i++;
            }
        }
    }

    private static TLRPC$PhotoSize findPhotoCachedSize(TLRPC$Message tLRPC$Message) {
        TLRPC$PhotoSize tLRPC$PhotoSize;
        TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$Message.media;
        int i = 0;
        if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaPhoto) {
            int size = tLRPC$MessageMedia.photo.sizes.size();
            while (i < size) {
                tLRPC$PhotoSize = tLRPC$Message.media.photo.sizes.get(i);
                if (!(tLRPC$PhotoSize instanceof TLRPC$TL_photoCachedSize)) {
                    i++;
                }
            }
            return null;
        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaDocument) {
            TLRPC$Document tLRPC$Document = tLRPC$MessageMedia.document;
            if (tLRPC$Document != null) {
                int size2 = tLRPC$Document.thumbs.size();
                while (i < size2) {
                    tLRPC$PhotoSize = tLRPC$Message.media.document.thumbs.get(i);
                    if (!(tLRPC$PhotoSize instanceof TLRPC$TL_photoCachedSize)) {
                        i++;
                    }
                }
                return null;
            }
            return null;
        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaWebPage) {
            TLRPC$Photo tLRPC$Photo = tLRPC$MessageMedia.webpage.photo;
            if (tLRPC$Photo != null) {
                int size3 = tLRPC$Photo.sizes.size();
                while (i < size3) {
                    tLRPC$PhotoSize = tLRPC$Message.media.webpage.photo.sizes.get(i);
                    if (!(tLRPC$PhotoSize instanceof TLRPC$TL_photoCachedSize)) {
                        i++;
                    }
                }
                return null;
            }
            return null;
        } else if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaInvoice) {
            TLRPC$MessageExtendedMedia tLRPC$MessageExtendedMedia = tLRPC$MessageMedia.extended_media;
            if (tLRPC$MessageExtendedMedia instanceof TLRPC$TL_messageExtendedMediaPreview) {
                return ((TLRPC$TL_messageExtendedMediaPreview) tLRPC$MessageExtendedMedia).thumb;
            }
            return null;
        } else {
            return null;
        }
        return tLRPC$PhotoSize;
    }

    public static void saveMessagesThumbs(ArrayList<TLRPC$Message> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            saveMessageThumbs(arrayList.get(i));
        }
    }

    public static MessageThumb generateMessageThumb(TLRPC$Message tLRPC$Message) {
        int i;
        int i2;
        Bitmap strippedPhotoBitmap;
        byte[] bArr;
        TLRPC$PhotoSize findPhotoCachedSize = findPhotoCachedSize(tLRPC$Message);
        if (findPhotoCachedSize != null && (bArr = findPhotoCachedSize.bytes) != null && bArr.length != 0) {
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(findPhotoCachedSize, true);
            TLRPC$TL_photoSize_layer127 tLRPC$TL_photoSize_layer127 = new TLRPC$TL_photoSize_layer127();
            tLRPC$TL_photoSize_layer127.f1634w = findPhotoCachedSize.f1634w;
            tLRPC$TL_photoSize_layer127.f1633h = findPhotoCachedSize.f1633h;
            tLRPC$TL_photoSize_layer127.location = findPhotoCachedSize.location;
            tLRPC$TL_photoSize_layer127.size = findPhotoCachedSize.size;
            tLRPC$TL_photoSize_layer127.type = findPhotoCachedSize.type;
            if (pathToAttach.exists() && tLRPC$Message.grouped_id == 0) {
                org.telegram.p043ui.Components.Point messageSize = ChatMessageCell.getMessageSize(findPhotoCachedSize.f1634w, findPhotoCachedSize.f1633h);
                String format = String.format(Locale.US, "%d_%d@%d_%d_b", Long.valueOf(findPhotoCachedSize.location.volume_id), Integer.valueOf(findPhotoCachedSize.location.local_id), Integer.valueOf((int) (messageSize.f1899x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize.f1900y / AndroidUtilities.density)));
                if (!getInstance().isInMemCache(format, false)) {
                    String path = pathToAttach.getPath();
                    float f = messageSize.f1899x;
                    float f2 = AndroidUtilities.density;
                    Bitmap loadBitmap = loadBitmap(path, null, (int) (f / f2), (int) (messageSize.f1900y / f2), false);
                    if (loadBitmap != null) {
                        Utilities.blurBitmap(loadBitmap, 3, 1, loadBitmap.getWidth(), loadBitmap.getHeight(), loadBitmap.getRowBytes());
                        float f3 = messageSize.f1899x;
                        float f4 = AndroidUtilities.density;
                        Bitmap createScaledBitmap = Bitmaps.createScaledBitmap(loadBitmap, (int) (f3 / f4), (int) (messageSize.f1900y / f4), true);
                        if (createScaledBitmap != loadBitmap) {
                            loadBitmap.recycle();
                            loadBitmap = createScaledBitmap;
                        }
                        return new MessageThumb(format, new BitmapDrawable(loadBitmap));
                    }
                }
            }
        } else {
            TLRPC$MessageMedia tLRPC$MessageMedia = tLRPC$Message.media;
            if (tLRPC$MessageMedia instanceof TLRPC$TL_messageMediaDocument) {
                int size = tLRPC$MessageMedia.document.thumbs.size();
                for (int i3 = 0; i3 < size; i3++) {
                    TLRPC$PhotoSize tLRPC$PhotoSize = tLRPC$Message.media.document.thumbs.get(i3);
                    if (tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize) {
                        TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$Message.media.document.thumbs, 320);
                        if (closestPhotoSizeWithSize == null) {
                            int i4 = 0;
                            while (true) {
                                if (i4 >= tLRPC$Message.media.document.attributes.size()) {
                                    i = 0;
                                    i2 = 0;
                                    break;
                                } else if (tLRPC$Message.media.document.attributes.get(i4) instanceof TLRPC$TL_documentAttributeVideo) {
                                    TLRPC$TL_documentAttributeVideo tLRPC$TL_documentAttributeVideo = (TLRPC$TL_documentAttributeVideo) tLRPC$Message.media.document.attributes.get(i4);
                                    i2 = tLRPC$TL_documentAttributeVideo.f1612h;
                                    i = tLRPC$TL_documentAttributeVideo.f1613w;
                                    break;
                                } else {
                                    i4++;
                                }
                            }
                        } else {
                            i2 = closestPhotoSizeWithSize.f1633h;
                            i = closestPhotoSizeWithSize.f1634w;
                        }
                        org.telegram.p043ui.Components.Point messageSize2 = ChatMessageCell.getMessageSize(i, i2);
                        String format2 = String.format(Locale.US, "%s_false@%d_%d_b", ImageLocation.getStrippedKey(tLRPC$Message, tLRPC$Message, tLRPC$PhotoSize), Integer.valueOf((int) (messageSize2.f1899x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize2.f1900y / AndroidUtilities.density)));
                        if (!getInstance().isInMemCache(format2, false) && (strippedPhotoBitmap = getStrippedPhotoBitmap(tLRPC$PhotoSize.bytes, null)) != null) {
                            Utilities.blurBitmap(strippedPhotoBitmap, 3, 1, strippedPhotoBitmap.getWidth(), strippedPhotoBitmap.getHeight(), strippedPhotoBitmap.getRowBytes());
                            float f5 = messageSize2.f1899x;
                            float f6 = AndroidUtilities.density;
                            Bitmap createScaledBitmap2 = Bitmaps.createScaledBitmap(strippedPhotoBitmap, (int) (f5 / f6), (int) (messageSize2.f1900y / f6), true);
                            if (createScaledBitmap2 != strippedPhotoBitmap) {
                                strippedPhotoBitmap.recycle();
                                strippedPhotoBitmap = createScaledBitmap2;
                            }
                            return new MessageThumb(format2, new BitmapDrawable(strippedPhotoBitmap));
                        }
                    }
                }
            }
        }
        return null;
    }

    public void onFragmentStackChanged() {
        for (int i = 0; i < this.cachedAnimatedFileDrawables.size(); i++) {
            this.cachedAnimatedFileDrawables.get(i).repeatCount = 0;
        }
    }

    public DispatchQueuePriority getCacheOutQueue() {
        return this.cacheOutQueue;
    }

    /* loaded from: classes4.dex */
    public static class MessageThumb {
        BitmapDrawable drawable;
        String key;

        public MessageThumb(String str, BitmapDrawable bitmapDrawable) {
            this.key = str;
            this.drawable = bitmapDrawable;
        }
    }
}
