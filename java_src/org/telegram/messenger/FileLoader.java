package org.telegram.messenger;

import android.net.Uri;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.FileSavingHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.telegram.messenger.FileLoadOperation;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.FileUploadOperation;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$ChatPhoto;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$DocumentAttribute;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$InputEncryptedFile;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$Message;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_documentAttributeFilename;
import org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated;
import org.telegram.tgnet.TLRPC$TL_fileLocationUnavailable;
import org.telegram.tgnet.TLRPC$TL_messageMediaDocument;
import org.telegram.tgnet.TLRPC$TL_messageMediaInvoice;
import org.telegram.tgnet.TLRPC$TL_messageMediaPhoto;
import org.telegram.tgnet.TLRPC$TL_messageMediaWebPage;
import org.telegram.tgnet.TLRPC$TL_messageService;
import org.telegram.tgnet.TLRPC$TL_photo;
import org.telegram.tgnet.TLRPC$TL_photoPathSize;
import org.telegram.tgnet.TLRPC$TL_photoStrippedSize;
import org.telegram.tgnet.TLRPC$TL_secureFile;
import org.telegram.tgnet.TLRPC$TL_videoSize;
import org.telegram.tgnet.TLRPC$TL_videoSizeEmojiMarkup;
import org.telegram.tgnet.TLRPC$TL_videoSizeStickerMarkup;
import org.telegram.tgnet.TLRPC$UserProfilePhoto;
import org.telegram.tgnet.TLRPC$VideoSize;
import org.telegram.tgnet.TLRPC$WebDocument;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
import p033j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class FileLoader extends BaseController {
    public static final long DEFAULT_MAX_FILE_SIZE = 2097152000;
    public static final long DEFAULT_MAX_FILE_SIZE_PREMIUM = 4194304000L;
    public static final int IMAGE_TYPE_ANIMATION = 2;
    public static final int IMAGE_TYPE_LOTTIE = 1;
    public static final int IMAGE_TYPE_SVG = 3;
    public static final int IMAGE_TYPE_SVG_WHITE = 4;
    public static final int IMAGE_TYPE_THEME_PREVIEW = 5;
    public static final int MEDIA_DIR_AUDIO = 1;
    public static final int MEDIA_DIR_CACHE = 4;
    public static final int MEDIA_DIR_DOCUMENT = 3;
    public static final int MEDIA_DIR_FILES = 5;
    public static final int MEDIA_DIR_IMAGE = 0;
    public static final int MEDIA_DIR_IMAGE_PUBLIC = 100;
    public static final int MEDIA_DIR_STORIES = 6;
    public static final int MEDIA_DIR_VIDEO = 2;
    public static final int MEDIA_DIR_VIDEO_PUBLIC = 101;
    public static final int PRELOAD_CACHE_TYPE = 11;
    public static final int PRIORITY_HIGH = 3;
    public static final int PRIORITY_LOW = 0;
    public static final int PRIORITY_NORMAL = 1;
    public static final int PRIORITY_NORMAL_UP = 2;
    private static final int PRIORITY_STREAM = 4;
    private static Pattern sentPattern;
    private int currentUploadOperationsCount;
    private int currentUploadSmallOperationsCount;
    private FileLoaderDelegate delegate;
    Runnable dumpFilesQueueRunnable;
    private final FilePathDatabase filePathDatabase;
    private String forceLoadingFile;
    private final FileLoaderPriorityQueue[] largeFilesQueue;
    private int lastReferenceId;
    private final ConcurrentHashMap<String, FileLoadOperation> loadOperationPaths;
    private final ConcurrentHashMap<String, LoadOperationUIObject> loadOperationPathsUI;
    private HashMap<String, Boolean> loadingVideos;
    private ConcurrentHashMap<Integer, Object> parentObjectReferences;
    private int priorityIncreasePointer;
    private final FileLoaderPriorityQueue[] smallFilesQueue;
    private final ConcurrentHashMap<String, FileUploadOperation> uploadOperationPaths;
    private final ConcurrentHashMap<String, FileUploadOperation> uploadOperationPathsEnc;
    private final LinkedList<FileUploadOperation> uploadOperationQueue;
    private HashMap<String, Long> uploadSizes;
    private final LinkedList<FileUploadOperation> uploadSmallOperationQueue;
    private static volatile DispatchQueue fileLoaderQueue = new DispatchQueue("fileUploadQueue");
    private static SparseArray<File> mediaDirs = null;
    private static final FileLoader[] Instance = new FileLoader[5];

    /* loaded from: classes4.dex */
    public interface FileLoaderDelegate {
        void fileDidFailedLoad(String str, int i);

        void fileDidFailedUpload(String str, boolean z);

        void fileDidLoaded(String str, File file, Object obj, int i);

        void fileDidUploaded(String str, TLRPC$InputFile tLRPC$InputFile, TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile, byte[] bArr, byte[] bArr2, long j);

        void fileLoadProgressChanged(FileLoadOperation fileLoadOperation, String str, long j, long j2);

        void fileUploadProgressChanged(FileUploadOperation fileUploadOperation, String str, long j, long j2, boolean z);
    }

    /* loaded from: classes4.dex */
    public interface FileResolver {
        File getFile();
    }

    static /* synthetic */ int access$1008(FileLoader fileLoader) {
        int i = fileLoader.currentUploadOperationsCount;
        fileLoader.currentUploadOperationsCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$1010(FileLoader fileLoader) {
        int i = fileLoader.currentUploadOperationsCount;
        fileLoader.currentUploadOperationsCount = i - 1;
        return i;
    }

    static /* synthetic */ int access$808(FileLoader fileLoader) {
        int i = fileLoader.currentUploadSmallOperationsCount;
        fileLoader.currentUploadSmallOperationsCount = i + 1;
        return i;
    }

    static /* synthetic */ int access$810(FileLoader fileLoader) {
        int i = fileLoader.currentUploadSmallOperationsCount;
        fileLoader.currentUploadSmallOperationsCount = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAndSaveDocumentWithForcedFileName$0(TLRPC$Document tLRPC$Document, Object obj, int i, int i2, String str, Uri uri) {
        loadFileInternal(tLRPC$Document, null, null, null, null, obj, null, 0L, i, null, 0L, false, i2, str, uri);
    }

    public void loadAndSaveDocumentWithForcedFileName(final String str, final Uri uri, final TLRPC$Document tLRPC$Document, final Object obj, final int i, final int i2) {
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$loadAndSaveDocumentWithForcedFileName$0(tLRPC$Document, obj, i, i2, str, uri);
            }
        };
        if (i2 != 10 && !TextUtils.isEmpty(str) && !str.contains(String.valueOf(Integer.MIN_VALUE))) {
            LoadOperationUIObject loadOperationUIObject = new LoadOperationUIObject(null);
            loadOperationUIObject.loadInternalRunnable = runnable;
            this.loadOperationPathsUI.put(str, loadOperationUIObject);
        }
        fileLoaderQueue.postRunnable(runnable);
    }

    private FileLoadOperation loadFileInternal(TLRPC$Document tLRPC$Document, SecureDocument secureDocument, WebFile webFile, TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated, ImageLocation imageLocation, Object obj, String str, long j, int i, FileLoadOperationStream fileLoadOperationStream, long j2, boolean z, int i2) {
        return loadFileInternal(tLRPC$Document, secureDocument, webFile, tLRPC$TL_fileLocationToBeDeprecated, imageLocation, obj, str, j, i, fileLoadOperationStream, j2, z, i2, null, null);
    }

    public static FilePathDatabase.FileMeta getFileMetadataFromParent(int i, Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            if (str.startsWith("sent_")) {
                if (sentPattern == null) {
                    sentPattern = Pattern.compile("sent_.*_([0-9]+)_([0-9]+)_([0-9]+)_([0-9]+)");
                }
                try {
                    Matcher matcher = sentPattern.matcher(str);
                    if (matcher.matches()) {
                        FilePathDatabase.FileMeta fileMeta = new FilePathDatabase.FileMeta();
                        fileMeta.messageId = Integer.parseInt(matcher.group(1));
                        fileMeta.dialogId = Long.parseLong(matcher.group(2));
                        fileMeta.messageType = Integer.parseInt(matcher.group(3));
                        fileMeta.messageSize = Long.parseLong(matcher.group(4));
                        return fileMeta;
                    }
                    return null;
                } catch (Exception e) {
                    FileLog.m102e(e);
                    return null;
                }
            }
            return null;
        } else if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            FilePathDatabase.FileMeta fileMeta2 = new FilePathDatabase.FileMeta();
            fileMeta2.messageId = messageObject.getId();
            fileMeta2.dialogId = messageObject.getDialogId();
            fileMeta2.messageType = messageObject.type;
            fileMeta2.messageSize = messageObject.getSize();
            return fileMeta2;
        } else if (obj instanceof TL_stories$StoryItem) {
            FilePathDatabase.FileMeta fileMeta3 = new FilePathDatabase.FileMeta();
            fileMeta3.dialogId = ((TL_stories$StoryItem) obj).dialogId;
            fileMeta3.messageType = 23;
            return fileMeta3;
        } else {
            return null;
        }
    }

    public static TLRPC$VideoSize getVectorMarkupVideoSize(TLRPC$Photo tLRPC$Photo) {
        if (tLRPC$Photo != null && tLRPC$Photo.video_sizes != null) {
            for (int i = 0; i < tLRPC$Photo.video_sizes.size(); i++) {
                TLRPC$VideoSize tLRPC$VideoSize = tLRPC$Photo.video_sizes.get(i);
                if ((tLRPC$VideoSize instanceof TLRPC$TL_videoSizeEmojiMarkup) || (tLRPC$VideoSize instanceof TLRPC$TL_videoSizeStickerMarkup)) {
                    return tLRPC$VideoSize;
                }
            }
        }
        return null;
    }

    public static TLRPC$VideoSize getEmojiMarkup(ArrayList<TLRPC$VideoSize> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            if ((arrayList.get(i) instanceof TLRPC$TL_videoSizeEmojiMarkup) || (arrayList.get(i) instanceof TLRPC$TL_videoSizeStickerMarkup)) {
                return arrayList.get(i);
            }
        }
        return null;
    }

    private int getPriorityValue(int i) {
        if (i == 4) {
            return Integer.MAX_VALUE;
        }
        if (i == 3) {
            int i2 = this.priorityIncreasePointer + 1;
            this.priorityIncreasePointer = i2;
            return i2 + 1048576;
        } else if (i != 2) {
            return i == 1 ? 65536 : 0;
        } else {
            int i3 = this.priorityIncreasePointer + 1;
            this.priorityIncreasePointer = i3;
            return i3 + 65536;
        }
    }

    public DispatchQueue getFileLoaderQueue() {
        return fileLoaderQueue;
    }

    public void setLocalPathTo(TLObject tLObject, String str) {
        int i = 4;
        if (tLObject instanceof TLRPC$Document) {
            TLRPC$Document tLRPC$Document = (TLRPC$Document) tLObject;
            if (tLRPC$Document.key == null) {
                if (MessageObject.isVoiceDocument(tLRPC$Document)) {
                    i = 1;
                } else {
                    i = MessageObject.isVideoDocument(tLRPC$Document) ? 2 : 3;
                }
            }
            this.filePathDatabase.putPath(tLRPC$Document.f1610id, tLRPC$Document.dc_id, i, 1, str);
        } else if (tLObject instanceof TLRPC$PhotoSize) {
            TLRPC$PhotoSize tLRPC$PhotoSize = (TLRPC$PhotoSize) tLObject;
            if ((tLRPC$PhotoSize instanceof TLRPC$TL_photoStrippedSize) || (tLRPC$PhotoSize instanceof TLRPC$TL_photoPathSize)) {
                return;
            }
            TLRPC$FileLocation tLRPC$FileLocation = tLRPC$PhotoSize.location;
            if (tLRPC$FileLocation != null && tLRPC$FileLocation.key == null && ((tLRPC$FileLocation.volume_id != -2147483648L || tLRPC$FileLocation.local_id >= 0) && tLRPC$PhotoSize.size >= 0)) {
                i = 0;
            }
            this.filePathDatabase.putPath(tLRPC$FileLocation.volume_id, tLRPC$FileLocation.dc_id + (tLRPC$FileLocation.local_id << 16), i, 1, str);
        }
    }

    public static FileLoader getInstance(int i) {
        FileLoader[] fileLoaderArr = Instance;
        FileLoader fileLoader = fileLoaderArr[i];
        if (fileLoader == null) {
            synchronized (FileLoader.class) {
                fileLoader = fileLoaderArr[i];
                if (fileLoader == null) {
                    fileLoader = new FileLoader(i);
                    fileLoaderArr[i] = fileLoader;
                }
            }
        }
        return fileLoader;
    }

    public FileLoader(int i) {
        super(i);
        this.smallFilesQueue = new FileLoaderPriorityQueue[5];
        this.largeFilesQueue = new FileLoaderPriorityQueue[5];
        this.uploadOperationQueue = new LinkedList<>();
        this.uploadSmallOperationQueue = new LinkedList<>();
        this.uploadOperationPaths = new ConcurrentHashMap<>();
        this.uploadOperationPathsEnc = new ConcurrentHashMap<>();
        this.currentUploadOperationsCount = 0;
        this.currentUploadSmallOperationsCount = 0;
        this.loadOperationPaths = new ConcurrentHashMap<>();
        this.loadOperationPathsUI = new ConcurrentHashMap<>(10, 1.0f, 2);
        this.uploadSizes = new HashMap<>();
        this.loadingVideos = new HashMap<>();
        this.delegate = null;
        this.parentObjectReferences = new ConcurrentHashMap<>();
        this.dumpFilesQueueRunnable = new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$new$17();
            }
        };
        this.filePathDatabase = new FilePathDatabase(i);
        int i2 = 0;
        while (true) {
            FileLoaderPriorityQueue[] fileLoaderPriorityQueueArr = this.smallFilesQueue;
            if (i2 < fileLoaderPriorityQueueArr.length) {
                StringBuilder sb = new StringBuilder();
                sb.append("smallFilesQueue dc");
                int i3 = i2 + 1;
                sb.append(i3);
                fileLoaderPriorityQueueArr[i2] = new FileLoaderPriorityQueue(i, sb.toString(), 0, fileLoaderQueue);
                this.largeFilesQueue[i2] = new FileLoaderPriorityQueue(i, "largeFilesQueue dc" + i3, 1, fileLoaderQueue);
                i2 = i3;
            } else {
                dumpFilesQueue();
                return;
            }
        }
    }

    public static void setMediaDirs(SparseArray<File> sparseArray) {
        mediaDirs = sparseArray;
    }

    public static File checkDirectory(int i) {
        return mediaDirs.get(i);
    }

    public static File getDirectory(int i) {
        File file = mediaDirs.get(i);
        if (file == null && i != 4) {
            file = mediaDirs.get(4);
        }
        if (BuildVars.NO_SCOPED_STORAGE && file != null) {
            try {
                if (!file.isDirectory()) {
                    file.mkdirs();
                }
            } catch (Exception unused) {
            }
        }
        return file;
    }

    public int getFileReference(Object obj) {
        int i = this.lastReferenceId;
        this.lastReferenceId = i + 1;
        this.parentObjectReferences.put(Integer.valueOf(i), obj);
        return i;
    }

    public Object getParentObject(int i) {
        return this.parentObjectReferences.get(Integer.valueOf(i));
    }

    /* renamed from: setLoadingVideoInternal */
    public void lambda$setLoadingVideo$1(TLRPC$Document tLRPC$Document, boolean z) {
        String attachFileName = getAttachFileName(tLRPC$Document);
        StringBuilder sb = new StringBuilder();
        sb.append(attachFileName);
        sb.append(z ? TtmlNode.TAG_P : "");
        this.loadingVideos.put(sb.toString(), Boolean.TRUE);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.videoLoadingStateChanged, attachFileName);
    }

    public void setLoadingVideo(final TLRPC$Document tLRPC$Document, final boolean z, boolean z2) {
        if (tLRPC$Document == null) {
            return;
        }
        if (z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoader.this.lambda$setLoadingVideo$1(tLRPC$Document, z);
                }
            });
        } else {
            lambda$setLoadingVideo$1(tLRPC$Document, z);
        }
    }

    public void setLoadingVideoForPlayer(TLRPC$Document tLRPC$Document, boolean z) {
        if (tLRPC$Document == null) {
            return;
        }
        String attachFileName = getAttachFileName(tLRPC$Document);
        HashMap<String, Boolean> hashMap = this.loadingVideos;
        StringBuilder sb = new StringBuilder();
        sb.append(attachFileName);
        sb.append(z ? "" : TtmlNode.TAG_P);
        if (hashMap.containsKey(sb.toString())) {
            HashMap<String, Boolean> hashMap2 = this.loadingVideos;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(attachFileName);
            sb2.append(z ? TtmlNode.TAG_P : "");
            hashMap2.put(sb2.toString(), Boolean.TRUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: removeLoadingVideoInternal */
    public void lambda$removeLoadingVideo$2(TLRPC$Document tLRPC$Document, boolean z) {
        String attachFileName = getAttachFileName(tLRPC$Document);
        StringBuilder sb = new StringBuilder();
        sb.append(attachFileName);
        sb.append(z ? TtmlNode.TAG_P : "");
        if (this.loadingVideos.remove(sb.toString()) != null) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.videoLoadingStateChanged, attachFileName);
        }
    }

    public void removeLoadingVideo(final TLRPC$Document tLRPC$Document, final boolean z, boolean z2) {
        if (tLRPC$Document == null) {
            return;
        }
        if (z2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoader.this.lambda$removeLoadingVideo$2(tLRPC$Document, z);
                }
            });
        } else {
            lambda$removeLoadingVideo$2(tLRPC$Document, z);
        }
    }

    public boolean isLoadingVideo(TLRPC$Document tLRPC$Document, boolean z) {
        if (tLRPC$Document != null) {
            HashMap<String, Boolean> hashMap = this.loadingVideos;
            StringBuilder sb = new StringBuilder();
            sb.append(getAttachFileName(tLRPC$Document));
            sb.append(z ? TtmlNode.TAG_P : "");
            if (hashMap.containsKey(sb.toString())) {
                return true;
            }
        }
        return false;
    }

    public boolean isLoadingVideoAny(TLRPC$Document tLRPC$Document) {
        return isLoadingVideo(tLRPC$Document, false) || isLoadingVideo(tLRPC$Document, true);
    }

    public void cancelFileUpload(final String str, final boolean z) {
        if (str == null) {
            return;
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$cancelFileUpload$3(z, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelFileUpload$3(boolean z, String str) {
        FileUploadOperation fileUploadOperation;
        if (!z) {
            fileUploadOperation = this.uploadOperationPaths.get(str);
        } else {
            fileUploadOperation = this.uploadOperationPathsEnc.get(str);
        }
        this.uploadSizes.remove(str);
        if (fileUploadOperation != null) {
            this.uploadOperationPathsEnc.remove(str);
            this.uploadOperationQueue.remove(fileUploadOperation);
            this.uploadSmallOperationQueue.remove(fileUploadOperation);
            fileUploadOperation.cancel();
        }
    }

    public void checkUploadNewDataAvailable(String str, boolean z, long j, long j2) {
        checkUploadNewDataAvailable(str, z, j, j2, null);
    }

    public void checkUploadNewDataAvailable(final String str, final boolean z, final long j, final long j2, final Float f) {
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$checkUploadNewDataAvailable$4(z, str, j, j2, f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUploadNewDataAvailable$4(boolean z, String str, long j, long j2, Float f) {
        FileUploadOperation fileUploadOperation;
        if (z) {
            fileUploadOperation = this.uploadOperationPathsEnc.get(str);
        } else {
            fileUploadOperation = this.uploadOperationPaths.get(str);
        }
        FileUploadOperation fileUploadOperation2 = fileUploadOperation;
        if (fileUploadOperation2 != null) {
            fileUploadOperation2.checkNewDataAvailable(j, j2, f);
        } else if (j2 != 0) {
            this.uploadSizes.put(str, Long.valueOf(j2));
        }
    }

    public void onNetworkChanged(final boolean z) {
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$onNetworkChanged$5(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onNetworkChanged$5(boolean z) {
        for (Map.Entry<String, FileUploadOperation> entry : this.uploadOperationPaths.entrySet()) {
            entry.getValue().onNetworkChanged(z);
        }
        for (Map.Entry<String, FileUploadOperation> entry2 : this.uploadOperationPathsEnc.entrySet()) {
            entry2.getValue().onNetworkChanged(z);
        }
    }

    public void uploadFile(String str, boolean z, boolean z2, int i) {
        uploadFile(str, z, z2, 0L, i, false);
    }

    public void uploadFile(final String str, final boolean z, final boolean z2, final long j, final int i, final boolean z3) {
        if (str == null) {
            return;
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$uploadFile$6(z, str, j, i, z3, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadFile$6(boolean z, String str, long j, int i, boolean z2, boolean z3) {
        long j2;
        if (z) {
            if (this.uploadOperationPathsEnc.containsKey(str)) {
                return;
            }
        } else if (this.uploadOperationPaths.containsKey(str)) {
            return;
        }
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 == 0 || this.uploadSizes.get(str) == null) {
            j2 = j;
        } else {
            this.uploadSizes.remove(str);
            j2 = 0;
        }
        FileUploadOperation fileUploadOperation = new FileUploadOperation(this.currentAccount, str, z, j2, i);
        FileLoaderDelegate fileLoaderDelegate = this.delegate;
        if (fileLoaderDelegate != null && i2 != 0) {
            fileLoaderDelegate.fileUploadProgressChanged(fileUploadOperation, str, 0L, j, z);
        }
        if (z) {
            this.uploadOperationPathsEnc.put(str, fileUploadOperation);
        } else {
            this.uploadOperationPaths.put(str, fileUploadOperation);
        }
        if (z2) {
            fileUploadOperation.setForceSmallFile();
        }
        fileUploadOperation.setDelegate(new C35701(z, str, z3));
        if (z3) {
            int i3 = this.currentUploadSmallOperationsCount;
            if (i3 < 1) {
                this.currentUploadSmallOperationsCount = i3 + 1;
                fileUploadOperation.start();
                return;
            }
            this.uploadSmallOperationQueue.add(fileUploadOperation);
            return;
        }
        int i4 = this.currentUploadOperationsCount;
        if (i4 < 1) {
            this.currentUploadOperationsCount = i4 + 1;
            fileUploadOperation.start();
            return;
        }
        this.uploadOperationQueue.add(fileUploadOperation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.FileLoader$1 */
    /* loaded from: classes4.dex */
    public class C35701 implements FileUploadOperation.FileUploadOperationDelegate {
        final /* synthetic */ boolean val$encrypted;
        final /* synthetic */ String val$location;
        final /* synthetic */ boolean val$small;

        C35701(boolean z, String str, boolean z2) {
            this.val$encrypted = z;
            this.val$location = str;
            this.val$small = z2;
        }

        @Override // org.telegram.messenger.FileUploadOperation.FileUploadOperationDelegate
        public void didFinishUploadingFile(final FileUploadOperation fileUploadOperation, final TLRPC$InputFile tLRPC$InputFile, final TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile, final byte[] bArr, final byte[] bArr2) {
            DispatchQueue dispatchQueue = FileLoader.fileLoaderQueue;
            final boolean z = this.val$encrypted;
            final String str = this.val$location;
            final boolean z2 = this.val$small;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoader.C35701.this.lambda$didFinishUploadingFile$0(z, str, z2, tLRPC$InputFile, tLRPC$InputEncryptedFile, bArr, bArr2, fileUploadOperation);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFinishUploadingFile$0(boolean z, String str, boolean z2, TLRPC$InputFile tLRPC$InputFile, TLRPC$InputEncryptedFile tLRPC$InputEncryptedFile, byte[] bArr, byte[] bArr2, FileUploadOperation fileUploadOperation) {
            FileUploadOperation fileUploadOperation2;
            FileUploadOperation fileUploadOperation3;
            if (z) {
                FileLoader.this.uploadOperationPathsEnc.remove(str);
            } else {
                FileLoader.this.uploadOperationPaths.remove(str);
            }
            if (z2) {
                FileLoader.access$810(FileLoader.this);
                if (FileLoader.this.currentUploadSmallOperationsCount < 1 && (fileUploadOperation3 = (FileUploadOperation) FileLoader.this.uploadSmallOperationQueue.poll()) != null) {
                    FileLoader.access$808(FileLoader.this);
                    fileUploadOperation3.start();
                }
            } else {
                FileLoader.access$1010(FileLoader.this);
                if (FileLoader.this.currentUploadOperationsCount < 1 && (fileUploadOperation2 = (FileUploadOperation) FileLoader.this.uploadOperationQueue.poll()) != null) {
                    FileLoader.access$1008(FileLoader.this);
                    fileUploadOperation2.start();
                }
            }
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileDidUploaded(str, tLRPC$InputFile, tLRPC$InputEncryptedFile, bArr, bArr2, fileUploadOperation.getTotalFileSize());
            }
        }

        @Override // org.telegram.messenger.FileUploadOperation.FileUploadOperationDelegate
        public void didFailedUploadingFile(FileUploadOperation fileUploadOperation) {
            DispatchQueue dispatchQueue = FileLoader.fileLoaderQueue;
            final boolean z = this.val$encrypted;
            final String str = this.val$location;
            final boolean z2 = this.val$small;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoader.C35701.this.lambda$didFailedUploadingFile$1(z, str, z2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didFailedUploadingFile$1(boolean z, String str, boolean z2) {
            FileUploadOperation fileUploadOperation;
            FileUploadOperation fileUploadOperation2;
            if (z) {
                FileLoader.this.uploadOperationPathsEnc.remove(str);
            } else {
                FileLoader.this.uploadOperationPaths.remove(str);
            }
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileDidFailedUpload(str, z);
            }
            if (z2) {
                FileLoader.access$810(FileLoader.this);
                if (FileLoader.this.currentUploadSmallOperationsCount >= 1 || (fileUploadOperation2 = (FileUploadOperation) FileLoader.this.uploadSmallOperationQueue.poll()) == null) {
                    return;
                }
                FileLoader.access$808(FileLoader.this);
                fileUploadOperation2.start();
                return;
            }
            FileLoader.access$1010(FileLoader.this);
            if (FileLoader.this.currentUploadOperationsCount >= 1 || (fileUploadOperation = (FileUploadOperation) FileLoader.this.uploadOperationQueue.poll()) == null) {
                return;
            }
            FileLoader.access$1008(FileLoader.this);
            fileUploadOperation.start();
        }

        @Override // org.telegram.messenger.FileUploadOperation.FileUploadOperationDelegate
        public void didChangedUploadProgress(FileUploadOperation fileUploadOperation, long j, long j2) {
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileUploadProgressChanged(fileUploadOperation, this.val$location, j, j2, this.val$encrypted);
            }
        }
    }

    public void setForceStreamLoadingFile(final TLRPC$FileLocation tLRPC$FileLocation, final String str) {
        if (tLRPC$FileLocation == null) {
            return;
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$setForceStreamLoadingFile$7(tLRPC$FileLocation, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setForceStreamLoadingFile$7(TLRPC$FileLocation tLRPC$FileLocation, String str) {
        String attachFileName = getAttachFileName(tLRPC$FileLocation, str);
        this.forceLoadingFile = attachFileName;
        FileLoadOperation fileLoadOperation = this.loadOperationPaths.get(attachFileName);
        if (fileLoadOperation != null) {
            if (fileLoadOperation.isPreloadVideoOperation()) {
                fileLoadOperation.setIsPreloadVideoOperation(false);
            }
            fileLoadOperation.setForceRequest(true);
            fileLoadOperation.setPriority(getPriorityValue(4));
            fileLoadOperation.getQueue().remove(fileLoadOperation);
            fileLoadOperation.getQueue().add(fileLoadOperation);
            fileLoadOperation.getQueue().checkLoadingOperations();
        }
    }

    public void cancelLoadFile(TLRPC$Document tLRPC$Document) {
        cancelLoadFile(tLRPC$Document, false);
    }

    public void cancelLoadFile(TLRPC$Document tLRPC$Document, boolean z) {
        cancelLoadFile(tLRPC$Document, null, null, null, null, null, z);
    }

    public void cancelLoadFile(SecureDocument secureDocument) {
        cancelLoadFile(null, secureDocument, null, null, null, null, false);
    }

    public void cancelLoadFile(WebFile webFile) {
        cancelLoadFile(null, null, webFile, null, null, null, false);
    }

    public void cancelLoadFile(TLRPC$PhotoSize tLRPC$PhotoSize) {
        cancelLoadFile(tLRPC$PhotoSize, false);
    }

    public void cancelLoadFile(TLRPC$PhotoSize tLRPC$PhotoSize, boolean z) {
        cancelLoadFile(null, null, null, tLRPC$PhotoSize.location, null, null, z);
    }

    public void cancelLoadFile(TLRPC$FileLocation tLRPC$FileLocation, String str) {
        cancelLoadFile(tLRPC$FileLocation, str, false);
    }

    public void cancelLoadFile(TLRPC$FileLocation tLRPC$FileLocation, String str, boolean z) {
        cancelLoadFile(null, null, null, tLRPC$FileLocation, str, null, z);
    }

    public void cancelLoadFile(String str) {
        cancelLoadFile(null, null, null, null, null, str, true);
    }

    public void cancelLoadFiles(ArrayList<String> arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            cancelLoadFile(null, null, null, null, null, arrayList.get(i), true);
        }
    }

    private void cancelLoadFile(TLRPC$Document tLRPC$Document, SecureDocument secureDocument, WebFile webFile, TLRPC$FileLocation tLRPC$FileLocation, String str, final String str2, boolean z) {
        if (tLRPC$FileLocation == null && tLRPC$Document == null && webFile == null && secureDocument == null && TextUtils.isEmpty(str2)) {
            return;
        }
        if (tLRPC$FileLocation != null) {
            str2 = getAttachFileName(tLRPC$FileLocation, str);
        } else if (tLRPC$Document != null) {
            str2 = getAttachFileName(tLRPC$Document);
        } else if (secureDocument != null) {
            str2 = getAttachFileName(secureDocument);
        } else if (webFile != null) {
            str2 = getAttachFileName(webFile);
        }
        LoadOperationUIObject remove = this.loadOperationPathsUI.remove(str2);
        Runnable runnable = remove != null ? remove.loadInternalRunnable : null;
        boolean z2 = remove != null;
        if (runnable != null) {
            fileLoaderQueue.cancelRunnable(runnable);
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$cancelLoadFile$8(str2);
            }
        });
        if (!z2 || tLRPC$Document == null) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$cancelLoadFile$9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadFile$8(String str) {
        FileLoadOperation remove = this.loadOperationPaths.remove(str);
        if (remove != null) {
            remove.getQueue().cancel(remove);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadFile$9() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDownloadingFilesChanged, new Object[0]);
    }

    public void changePriority(final int i, TLRPC$Document tLRPC$Document, SecureDocument secureDocument, WebFile webFile, TLRPC$FileLocation tLRPC$FileLocation, String str, final String str2) {
        if (tLRPC$FileLocation == null && tLRPC$Document == null && webFile == null && secureDocument == null && TextUtils.isEmpty(str2)) {
            return;
        }
        if (tLRPC$FileLocation != null) {
            str2 = getAttachFileName(tLRPC$FileLocation, str);
        } else if (tLRPC$Document != null) {
            str2 = getAttachFileName(tLRPC$Document);
        } else if (secureDocument != null) {
            str2 = getAttachFileName(secureDocument);
        } else if (webFile != null) {
            str2 = getAttachFileName(webFile);
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$changePriority$10(str2, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changePriority$10(String str, int i) {
        int priorityValue;
        FileLoadOperation fileLoadOperation = this.loadOperationPaths.get(str);
        if (fileLoadOperation == null || fileLoadOperation.getPriority() == (priorityValue = getPriorityValue(i))) {
            return;
        }
        fileLoadOperation.setPriority(priorityValue);
        FileLoaderPriorityQueue queue = fileLoadOperation.getQueue();
        queue.remove(fileLoadOperation);
        queue.add(fileLoadOperation);
        queue.checkLoadingOperations();
        FileLog.m105d("update priority " + str + " position in queue " + fileLoadOperation.getPositionInQueue() + " account=" + this.currentAccount);
    }

    public void cancelLoadAllFiles() {
        for (final String str : this.loadOperationPathsUI.keySet()) {
            LoadOperationUIObject loadOperationUIObject = this.loadOperationPathsUI.get(str);
            Runnable runnable = loadOperationUIObject != null ? loadOperationUIObject.loadInternalRunnable : null;
            if (runnable != null) {
                fileLoaderQueue.cancelRunnable(runnable);
            }
            fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoader.this.lambda$cancelLoadAllFiles$11(str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadAllFiles$11(String str) {
        FileLoadOperation remove = this.loadOperationPaths.remove(str);
        if (remove != null) {
            remove.getQueue().cancel(remove);
        }
    }

    public boolean isLoadingFile(String str) {
        return str != null && this.loadOperationPathsUI.containsKey(str);
    }

    public float getBufferedProgressFromPosition(float f, String str) {
        FileLoadOperation fileLoadOperation;
        return (TextUtils.isEmpty(str) || (fileLoadOperation = this.loadOperationPaths.get(str)) == null) ? BitmapDescriptorFactory.HUE_RED : fileLoadOperation.getDownloadedLengthFromOffset(f);
    }

    public void loadFile(ImageLocation imageLocation, Object obj, String str, int i, int i2) {
        if (imageLocation == null) {
            return;
        }
        loadFile(imageLocation.document, imageLocation.secureDocument, imageLocation.webFile, imageLocation.location, imageLocation, obj, str, imageLocation.getSize(), i, (i2 != 0 || (!imageLocation.isEncrypted() && (imageLocation.photoSize == null || imageLocation.getSize() != 0))) ? i2 : 1);
    }

    public void loadFile(SecureDocument secureDocument, int i) {
        if (secureDocument == null) {
            return;
        }
        loadFile(null, secureDocument, null, null, null, null, null, 0L, i, 1);
    }

    public void loadFile(TLRPC$Document tLRPC$Document, Object obj, int i, int i2) {
        if (tLRPC$Document == null) {
            return;
        }
        loadFile(tLRPC$Document, null, null, null, null, obj, null, 0L, i, (i2 != 0 || tLRPC$Document.key == null) ? i2 : 1);
    }

    public void loadFile(WebFile webFile, int i, int i2) {
        loadFile(null, null, webFile, null, null, null, null, 0L, i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x02ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.telegram.messenger.FileLoadOperation loadFileInternal(org.telegram.tgnet.TLRPC$Document r34, org.telegram.messenger.SecureDocument r35, org.telegram.messenger.WebFile r36, org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated r37, org.telegram.messenger.ImageLocation r38, java.lang.Object r39, java.lang.String r40, long r41, int r43, org.telegram.messenger.FileLoadOperationStream r44, long r45, boolean r47, int r48, java.lang.String r49, android.net.Uri r50) {
        /*
            Method dump skipped, instructions count: 881
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoader.loadFileInternal(org.telegram.tgnet.TLRPC$Document, org.telegram.messenger.SecureDocument, org.telegram.messenger.WebFile, org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated, org.telegram.messenger.ImageLocation, java.lang.Object, java.lang.String, long, int, org.telegram.messenger.FileLoadOperationStream, long, boolean, int, java.lang.String, android.net.Uri):org.telegram.messenger.FileLoadOperation");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.messenger.FileLoader$2 */
    /* loaded from: classes4.dex */
    public class C35712 implements FileLoadOperation.FileLoadOperationDelegate {
        final /* synthetic */ Uri val$customDirectoryUri;
        final /* synthetic */ String val$customFileName;
        final /* synthetic */ TLRPC$Document val$document;
        final /* synthetic */ String val$fileName;
        final /* synthetic */ int val$finalType;
        final /* synthetic */ Object val$parentObject;

        C35712(Object obj, TLRPC$Document tLRPC$Document, String str, int i, String str2, Uri uri) {
            this.val$parentObject = obj;
            this.val$document = tLRPC$Document;
            this.val$fileName = str;
            this.val$finalType = i;
            this.val$customFileName = str2;
            this.val$customDirectoryUri = uri;
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void didPreFinishLoading(final FileLoadOperation fileLoadOperation, File file) {
            final FileLoaderPriorityQueue queue = fileLoadOperation.getQueue();
            FileLoader.fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoader.C35712.lambda$didPreFinishLoading$0(FileLoadOperation.this, queue);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$didPreFinishLoading$0(FileLoadOperation fileLoadOperation, FileLoaderPriorityQueue fileLoaderPriorityQueue) {
            fileLoadOperation.preFinished = true;
            fileLoaderPriorityQueue.checkLoadingOperations();
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void didFinishLoadingFile(FileLoadOperation fileLoadOperation, File file) {
            String str;
            Uri uri;
            if (!fileLoadOperation.isPreloadVideoOperation() && fileLoadOperation.isPreloadFinished()) {
                FileLoader.this.checkDownloadQueue(fileLoadOperation, fileLoadOperation.getQueue(), 0L);
                return;
            }
            FilePathDatabase.FileMeta fileMetadataFromParent = FileLoader.getFileMetadataFromParent(FileLoader.this.currentAccount, this.val$parentObject);
            if (fileMetadataFromParent != null) {
                FileLoader.this.getFileLoader().getFileDatabase().saveFileDialogId(file, fileMetadataFromParent);
            }
            Object obj = this.val$parentObject;
            if (obj instanceof MessageObject) {
                MessageObject messageObject = (MessageObject) obj;
                if (this.val$document != null && messageObject.putInDownloadsStore) {
                    FileLoader.this.getDownloadController().onDownloadComplete(messageObject);
                }
            }
            if (!fileLoadOperation.isPreloadVideoOperation()) {
                FileLoader.this.loadOperationPathsUI.remove(this.val$fileName);
                if (FileLoader.this.delegate != null) {
                    FileLoader.this.delegate.fileDidLoaded(this.val$fileName, file, this.val$parentObject, this.val$finalType);
                }
            }
            FileLoader.this.checkDownloadQueue(fileLoadOperation, fileLoadOperation.getQueue(), 0L);
            TLRPC$Document tLRPC$Document = this.val$document;
            if (tLRPC$Document == null || (str = this.val$customFileName) == null || (uri = this.val$customDirectoryUri) == null) {
                return;
            }
            FileSavingHelper.saveDocumentFileToCustomDirectory(file, tLRPC$Document, str, uri, true);
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void didFailedLoadingFile(FileLoadOperation fileLoadOperation, int i) {
            FileLoader.this.loadOperationPathsUI.remove(this.val$fileName);
            FileLoader.this.checkDownloadQueue(fileLoadOperation, fileLoadOperation.getQueue());
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileDidFailedLoad(this.val$fileName, i);
            }
            if (this.val$document != null && (this.val$parentObject instanceof MessageObject) && i == 0) {
                FileLoader.this.getDownloadController().onDownloadFail((MessageObject) this.val$parentObject, i);
            } else if (i == -1) {
                LaunchActivity.checkFreeDiscSpaceStatic(2);
            }
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void didChangedLoadProgress(FileLoadOperation fileLoadOperation, long j, long j2) {
            if (FileLoader.this.delegate != null) {
                FileLoader.this.delegate.fileLoadProgressChanged(fileLoadOperation, this.val$fileName, j, j2);
            }
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public void saveFilePath(FilePathDatabase.PathData pathData, File file) {
            FileLoader.this.getFileDatabase().putPath(pathData.f1528id, pathData.f1527dc, pathData.type, 0, file != null ? file.toString() : null);
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public boolean hasAnotherRefOnFile(String str) {
            return FileLoader.this.getFileDatabase().hasAnotherRefOnFile(str);
        }

        @Override // org.telegram.messenger.FileLoadOperation.FileLoadOperationDelegate
        public boolean isLocallyCreatedFile(String str) {
            return FileLoader.this.getFileDatabase().isLocallyCreated(str);
        }
    }

    public static boolean canSaveAsFile(Object obj) {
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            if (messageObject.isDocument() && !messageObject.isRoundVideo() && !messageObject.isVoice()) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0059, code lost:
        if (r12 != 2) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean canSaveToPublicStorage(java.lang.Object r12) {
        /*
            r11 = this;
            boolean r0 = org.telegram.messenger.BuildVars.NO_SCOPED_STORAGE
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            int r0 = r11.currentAccount
            org.telegram.messenger.FilePathDatabase$FileMeta r0 = getFileMetadataFromParent(r0, r12)
            r2 = 0
            if (r0 == 0) goto L81
            long r3 = r0.dialogId
            org.telegram.messenger.MessagesController r5 = r11.getMessagesController()
            org.telegram.messenger.MessagesController r6 = r11.getMessagesController()
            long r7 = -r3
            java.lang.Long r9 = java.lang.Long.valueOf(r7)
            org.telegram.tgnet.TLRPC$Chat r6 = r6.getChat(r9)
            boolean r5 = r5.isChatNoForwards(r6)
            if (r5 != 0) goto L81
            boolean r5 = org.telegram.messenger.DialogObject.isEncryptedDialog(r3)
            if (r5 == 0) goto L2f
            goto L81
        L2f:
            boolean r5 = r12 instanceof org.telegram.messenger.MessageObject
            r6 = 2
            if (r5 == 0) goto L50
            r2 = r12
            org.telegram.messenger.MessageObject r2 = (org.telegram.messenger.MessageObject) r2
            boolean r12 = r2.isRoundVideo()
            if (r12 != 0) goto L4f
            boolean r12 = r2.isVoice()
            if (r12 != 0) goto L4f
            boolean r12 = r2.isAnyKindOfSticker()
            if (r12 != 0) goto L4f
            org.telegram.tgnet.TLRPC$Message r12 = r2.messageOwner
            boolean r12 = r12.noforwards
            if (r12 == 0) goto L5c
        L4f:
            return r1
        L50:
            int r12 = r0.messageType
            r5 = 5
            if (r12 == r5) goto L81
            r5 = 13
            if (r12 == r5) goto L81
            if (r12 != r6) goto L5c
            goto L81
        L5c:
            r9 = 0
            int r12 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            r3 = 1
            if (r12 < 0) goto L65
            r6 = r3
            goto L78
        L65:
            org.telegram.messenger.MessagesController r12 = r11.getMessagesController()
            java.lang.Long r4 = java.lang.Long.valueOf(r7)
            org.telegram.tgnet.TLRPC$Chat r12 = r12.getChat(r4)
            boolean r12 = org.telegram.messenger.ChatObject.isChannelAndNotMegaGroup(r12)
            if (r12 == 0) goto L78
            r6 = 4
        L78:
            int r12 = r11.currentAccount
            boolean r12 = org.telegram.messenger.SaveToGallerySettingsHelper.needSave(r6, r0, r2, r12)
            if (r12 == 0) goto L81
            return r3
        L81:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoader.canSaveToPublicStorage(java.lang.Object):boolean");
    }

    private void addOperationToQueue(FileLoadOperation fileLoadOperation, LinkedList<FileLoadOperation> linkedList) {
        int priority = fileLoadOperation.getPriority();
        if (priority > 0) {
            int size = linkedList.size();
            int i = 0;
            int size2 = linkedList.size();
            while (true) {
                if (i >= size2) {
                    break;
                } else if (linkedList.get(i).getPriority() < priority) {
                    size = i;
                    break;
                } else {
                    i++;
                }
            }
            linkedList.add(size, fileLoadOperation);
            return;
        }
        linkedList.add(fileLoadOperation);
    }

    private void loadFile(final TLRPC$Document tLRPC$Document, final SecureDocument secureDocument, final WebFile webFile, final TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated, final ImageLocation imageLocation, final Object obj, final String str, final long j, final int i, final int i2) {
        String str2;
        String attachFileName;
        if (tLRPC$TL_fileLocationToBeDeprecated != null) {
            attachFileName = getAttachFileName(tLRPC$TL_fileLocationToBeDeprecated, str);
        } else if (tLRPC$Document != null) {
            if (SharedConfig.isFilesOriginalNameSavingEnabled && !tLRPC$Document.attributes.isEmpty() && (tLRPC$Document.attributes.get(0) instanceof TLRPC$TL_documentAttributeFilename)) {
                attachFileName = tLRPC$Document.attributes.get(0).file_name;
            } else {
                attachFileName = getAttachFileName(tLRPC$Document);
            }
        } else if (webFile != null) {
            attachFileName = getAttachFileName(webFile);
        } else {
            str2 = null;
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoader.this.lambda$loadFile$12(tLRPC$Document, secureDocument, webFile, tLRPC$TL_fileLocationToBeDeprecated, imageLocation, obj, str, j, i, i2);
                }
            };
            if (i2 == 10 && !TextUtils.isEmpty(str2) && !str2.contains("-2147483648")) {
                LoadOperationUIObject loadOperationUIObject = new LoadOperationUIObject(null);
                loadOperationUIObject.loadInternalRunnable = runnable;
                this.loadOperationPathsUI.put(str2, loadOperationUIObject);
            }
            fileLoaderQueue.postRunnable(runnable);
        }
        str2 = attachFileName;
        Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$loadFile$12(tLRPC$Document, secureDocument, webFile, tLRPC$TL_fileLocationToBeDeprecated, imageLocation, obj, str, j, i, i2);
            }
        };
        if (i2 == 10) {
        }
        fileLoaderQueue.postRunnable(runnable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadFile$12(TLRPC$Document tLRPC$Document, SecureDocument secureDocument, WebFile webFile, TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated, ImageLocation imageLocation, Object obj, String str, long j, int i, int i2) {
        loadFileInternal(tLRPC$Document, secureDocument, webFile, tLRPC$TL_fileLocationToBeDeprecated, imageLocation, obj, str, j, i, null, 0L, false, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FileLoadOperation loadStreamFile(FileLoadOperationStream fileLoadOperationStream, TLRPC$Document tLRPC$Document, ImageLocation imageLocation, Object obj, long j, boolean z, int i) {
        return loadStreamFile(fileLoadOperationStream, tLRPC$Document, imageLocation, obj, j, z, i, tLRPC$Document == null ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FileLoadOperation loadStreamFile(final FileLoadOperationStream fileLoadOperationStream, final TLRPC$Document tLRPC$Document, final ImageLocation imageLocation, final Object obj, final long j, final boolean z, final int i, final int i2) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final FileLoadOperation[] fileLoadOperationArr = new FileLoadOperation[1];
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$loadStreamFile$13(fileLoadOperationArr, tLRPC$Document, imageLocation, obj, i, fileLoadOperationStream, j, z, i2, countDownLatch);
            }
        });
        awaitFileLoadOperation(countDownLatch, true);
        return fileLoadOperationArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadStreamFile$13(FileLoadOperation[] fileLoadOperationArr, TLRPC$Document tLRPC$Document, ImageLocation imageLocation, Object obj, int i, FileLoadOperationStream fileLoadOperationStream, long j, boolean z, int i2, CountDownLatch countDownLatch) {
        String str = null;
        TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated = (tLRPC$Document != null || imageLocation == null) ? null : imageLocation.location;
        if (tLRPC$Document == null && imageLocation != null) {
            str = "mp4";
        }
        fileLoadOperationArr[0] = loadFileInternal(tLRPC$Document, null, null, tLRPC$TL_fileLocationToBeDeprecated, imageLocation, obj, str, (tLRPC$Document != null || imageLocation == null) ? 0L : imageLocation.currentSize, i, fileLoadOperationStream, j, z, i2);
        countDownLatch.countDown();
    }

    private void awaitFileLoadOperation(CountDownLatch countDownLatch, boolean z) {
        try {
            countDownLatch.await();
        } catch (Exception e) {
            FileLog.m101e((Throwable) e, false);
            if (z) {
                awaitFileLoadOperation(countDownLatch, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDownloadQueue(FileLoadOperation fileLoadOperation, FileLoaderPriorityQueue fileLoaderPriorityQueue) {
        checkDownloadQueue(fileLoadOperation, fileLoaderPriorityQueue, 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkDownloadQueue(final FileLoadOperation fileLoadOperation, final FileLoaderPriorityQueue fileLoaderPriorityQueue, long j) {
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$checkDownloadQueue$14(fileLoaderPriorityQueue, fileLoadOperation);
            }
        }, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDownloadQueue$14(FileLoaderPriorityQueue fileLoaderPriorityQueue, FileLoadOperation fileLoadOperation) {
        if (fileLoaderPriorityQueue.remove(fileLoadOperation)) {
            this.loadOperationPaths.remove(fileLoadOperation.getFileName());
            fileLoaderPriorityQueue.checkLoadingOperations();
        }
    }

    public void setDelegate(FileLoaderDelegate fileLoaderDelegate) {
        this.delegate = fileLoaderDelegate;
    }

    public static String getMessageFileName(TLRPC$Message tLRPC$Message) {
        TLRPC$WebDocument tLRPC$WebDocument;
        TLRPC$PhotoSize closestPhotoSizeWithSize;
        TLRPC$PhotoSize closestPhotoSizeWithSize2;
        TLRPC$PhotoSize closestPhotoSizeWithSize3;
        if (tLRPC$Message == null) {
            return "";
        }
        if (tLRPC$Message instanceof TLRPC$TL_messageService) {
            TLRPC$Photo tLRPC$Photo = tLRPC$Message.action.photo;
            if (tLRPC$Photo != null) {
                ArrayList<TLRPC$PhotoSize> arrayList = tLRPC$Photo.sizes;
                if (arrayList.size() > 0 && (closestPhotoSizeWithSize3 = getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize())) != null) {
                    return getAttachFileName(closestPhotoSizeWithSize3);
                }
            }
        } else if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaDocument) {
            return getAttachFileName(MessageObject.getMedia(tLRPC$Message).document);
        } else {
            if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto) {
                ArrayList<TLRPC$PhotoSize> arrayList2 = MessageObject.getMedia(tLRPC$Message).photo.sizes;
                if (arrayList2.size() > 0 && (closestPhotoSizeWithSize2 = getClosestPhotoSizeWithSize(arrayList2, AndroidUtilities.getPhotoSize(), false, null, true)) != null) {
                    return getAttachFileName(closestPhotoSizeWithSize2);
                }
            } else if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaWebPage) {
                if (MessageObject.getMedia(tLRPC$Message).webpage.document != null) {
                    return getAttachFileName(MessageObject.getMedia(tLRPC$Message).webpage.document);
                }
                if (MessageObject.getMedia(tLRPC$Message).webpage.photo != null) {
                    ArrayList<TLRPC$PhotoSize> arrayList3 = MessageObject.getMedia(tLRPC$Message).webpage.photo.sizes;
                    if (arrayList3.size() > 0 && (closestPhotoSizeWithSize = getClosestPhotoSizeWithSize(arrayList3, AndroidUtilities.getPhotoSize())) != null) {
                        return getAttachFileName(closestPhotoSizeWithSize);
                    }
                }
            } else if ((MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaInvoice) && (tLRPC$WebDocument = ((TLRPC$TL_messageMediaInvoice) MessageObject.getMedia(tLRPC$Message)).webPhoto) != null) {
                return Utilities.MD5(tLRPC$WebDocument.url) + "." + ImageLoader.getHttpUrlExtension(tLRPC$WebDocument.url, getMimeTypePart(tLRPC$WebDocument.mime_type));
            }
        }
        return "";
    }

    public File getPathToMessage(TLRPC$Message tLRPC$Message) {
        return getPathToMessage(tLRPC$Message, true);
    }

    public File getPathToMessage(TLRPC$Message tLRPC$Message, boolean z) {
        TLRPC$PhotoSize closestPhotoSizeWithSize;
        TLRPC$PhotoSize closestPhotoSizeWithSize2;
        TLRPC$PhotoSize closestPhotoSizeWithSize3;
        if (tLRPC$Message == null) {
            return new File("");
        }
        if (tLRPC$Message instanceof TLRPC$TL_messageService) {
            TLRPC$Photo tLRPC$Photo = tLRPC$Message.action.photo;
            if (tLRPC$Photo != null) {
                ArrayList<TLRPC$PhotoSize> arrayList = tLRPC$Photo.sizes;
                if (arrayList.size() > 0 && (closestPhotoSizeWithSize3 = getClosestPhotoSizeWithSize(arrayList, AndroidUtilities.getPhotoSize())) != null) {
                    return getPathToAttach(closestPhotoSizeWithSize3, null, false, z);
                }
            }
        } else if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaDocument) {
            return getPathToAttach(MessageObject.getMedia(tLRPC$Message).document, null, MessageObject.getMedia(tLRPC$Message).ttl_seconds != 0, z);
        } else if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaPhoto) {
            ArrayList<TLRPC$PhotoSize> arrayList2 = MessageObject.getMedia(tLRPC$Message).photo.sizes;
            if (arrayList2.size() > 0 && (closestPhotoSizeWithSize2 = getClosestPhotoSizeWithSize(arrayList2, AndroidUtilities.getPhotoSize(), false, null, true)) != null) {
                return getPathToAttach(closestPhotoSizeWithSize2, null, MessageObject.getMedia(tLRPC$Message).ttl_seconds != 0, z);
            }
        } else if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaWebPage) {
            if (MessageObject.getMedia(tLRPC$Message).webpage.document != null) {
                return getPathToAttach(MessageObject.getMedia(tLRPC$Message).webpage.document, null, false, z);
            }
            if (MessageObject.getMedia(tLRPC$Message).webpage.photo != null) {
                ArrayList<TLRPC$PhotoSize> arrayList3 = MessageObject.getMedia(tLRPC$Message).webpage.photo.sizes;
                if (arrayList3.size() > 0 && (closestPhotoSizeWithSize = getClosestPhotoSizeWithSize(arrayList3, AndroidUtilities.getPhotoSize())) != null) {
                    return getPathToAttach(closestPhotoSizeWithSize, null, false, z);
                }
            }
        } else if (MessageObject.getMedia(tLRPC$Message) instanceof TLRPC$TL_messageMediaInvoice) {
            return getPathToAttach(((TLRPC$TL_messageMediaInvoice) MessageObject.getMedia(tLRPC$Message)).photo, null, true, z);
        }
        return new File("");
    }

    public File getPathToAttach(TLObject tLObject) {
        return getPathToAttach(tLObject, null, false);
    }

    public File getPathToAttach(TLObject tLObject, boolean z) {
        return getPathToAttach(tLObject, null, z);
    }

    public File getPathToAttach(TLObject tLObject, String str, boolean z) {
        return getPathToAttach(tLObject, null, str, z, true);
    }

    public File getPathToAttach(TLObject tLObject, String str, boolean z, boolean z2) {
        return getPathToAttach(tLObject, null, str, z, z2);
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x017b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File getPathToAttach(org.telegram.tgnet.TLObject r11, java.lang.String r12, java.lang.String r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoader.getPathToAttach(org.telegram.tgnet.TLObject, java.lang.String, java.lang.String, boolean, boolean):java.io.File");
    }

    public FilePathDatabase getFileDatabase() {
        return this.filePathDatabase;
    }

    public static TLRPC$PhotoSize getClosestPhotoSizeWithSize(ArrayList<TLRPC$PhotoSize> arrayList, int i) {
        return getClosestPhotoSizeWithSize(arrayList, i, false);
    }

    public static TLRPC$PhotoSize getClosestPhotoSizeWithSize(ArrayList<TLRPC$PhotoSize> arrayList, int i, boolean z) {
        return getClosestPhotoSizeWithSize(arrayList, i, z, null, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0044, code lost:
        if (r5.dc_id != Integer.MIN_VALUE) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0061, code lost:
        if (r5.dc_id != Integer.MIN_VALUE) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.tgnet.TLRPC$PhotoSize getClosestPhotoSizeWithSize(java.util.ArrayList<org.telegram.tgnet.TLRPC$PhotoSize> r8, int r9, boolean r10, org.telegram.tgnet.TLRPC$PhotoSize r11, boolean r12) {
        /*
            r0 = 0
            if (r8 == 0) goto L70
            boolean r1 = r8.isEmpty()
            if (r1 == 0) goto Lb
            goto L70
        Lb:
            r1 = 0
            r2 = r1
        Ld:
            int r3 = r8.size()
            if (r1 >= r3) goto L70
            java.lang.Object r3 = r8.get(r1)
            org.telegram.tgnet.TLRPC$PhotoSize r3 = (org.telegram.tgnet.TLRPC$PhotoSize) r3
            if (r3 == 0) goto L6d
            if (r3 == r11) goto L6d
            boolean r4 = r3 instanceof org.telegram.tgnet.TLRPC$TL_photoSizeEmpty
            if (r4 != 0) goto L6d
            boolean r4 = r3 instanceof org.telegram.tgnet.TLRPC$TL_photoPathSize
            if (r4 != 0) goto L6d
            if (r12 == 0) goto L2c
            boolean r4 = r3 instanceof org.telegram.tgnet.TLRPC$TL_photoStrippedSize
            if (r4 == 0) goto L2c
            goto L6d
        L2c:
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = 100
            if (r10 == 0) goto L4f
            int r6 = r3.f1633h
            int r7 = r3.f1634w
            int r6 = java.lang.Math.min(r6, r7)
            if (r0 == 0) goto L6b
            if (r9 <= r5) goto L46
            org.telegram.tgnet.TLRPC$FileLocation r5 = r0.location
            if (r5 == 0) goto L46
            int r5 = r5.dc_id
            if (r5 == r4) goto L6b
        L46:
            boolean r4 = r3 instanceof org.telegram.tgnet.TLRPC$TL_photoCachedSize
            if (r4 != 0) goto L6b
            if (r9 <= r2) goto L6d
            if (r2 >= r6) goto L6d
            goto L6b
        L4f:
            int r6 = r3.f1634w
            int r7 = r3.f1633h
            int r6 = java.lang.Math.max(r6, r7)
            if (r0 == 0) goto L6b
            if (r9 <= r5) goto L63
            org.telegram.tgnet.TLRPC$FileLocation r5 = r0.location
            if (r5 == 0) goto L63
            int r5 = r5.dc_id
            if (r5 == r4) goto L6b
        L63:
            boolean r4 = r3 instanceof org.telegram.tgnet.TLRPC$TL_photoCachedSize
            if (r4 != 0) goto L6b
            if (r6 > r9) goto L6d
            if (r2 >= r6) goto L6d
        L6b:
            r0 = r3
            r2 = r6
        L6d:
            int r1 = r1 + 1
            goto Ld
        L70:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoader.getClosestPhotoSizeWithSize(java.util.ArrayList, int, boolean, org.telegram.tgnet.TLRPC$PhotoSize, boolean):org.telegram.tgnet.TLRPC$PhotoSize");
    }

    public static TLRPC$VideoSize getClosestVideoSizeWithSize(ArrayList<TLRPC$VideoSize> arrayList, int i) {
        return getClosestVideoSizeWithSize(arrayList, i, false);
    }

    public static TLRPC$VideoSize getClosestVideoSizeWithSize(ArrayList<TLRPC$VideoSize> arrayList, int i, boolean z) {
        return getClosestVideoSizeWithSize(arrayList, i, z, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x003b, code lost:
        if (r4.dc_id != Integer.MIN_VALUE) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0054, code lost:
        if (r4.dc_id != Integer.MIN_VALUE) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.telegram.tgnet.TLRPC$VideoSize getClosestVideoSizeWithSize(java.util.ArrayList<org.telegram.tgnet.TLRPC$VideoSize> r7, int r8, boolean r9, boolean r10) {
        /*
            r10 = 0
            if (r7 == 0) goto L5f
            boolean r0 = r7.isEmpty()
            if (r0 == 0) goto La
            goto L5f
        La:
            r0 = 0
            r1 = r0
        Lc:
            int r2 = r7.size()
            if (r0 >= r2) goto L5f
            java.lang.Object r2 = r7.get(r0)
            org.telegram.tgnet.TLRPC$VideoSize r2 = (org.telegram.tgnet.TLRPC$VideoSize) r2
            if (r2 == 0) goto L5c
            boolean r3 = r2 instanceof org.telegram.tgnet.TLRPC$TL_videoSizeEmojiMarkup
            if (r3 != 0) goto L5c
            boolean r3 = r2 instanceof org.telegram.tgnet.TLRPC$TL_videoSizeStickerMarkup
            if (r3 == 0) goto L23
            goto L5c
        L23:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = 100
            if (r9 == 0) goto L42
            int r5 = r2.f1757h
            int r6 = r2.f1758w
            int r5 = java.lang.Math.min(r5, r6)
            if (r10 == 0) goto L5a
            if (r8 <= r4) goto L3d
            org.telegram.tgnet.TLRPC$FileLocation r4 = r10.location
            if (r4 == 0) goto L3d
            int r4 = r4.dc_id
            if (r4 == r3) goto L5a
        L3d:
            if (r8 <= r1) goto L5c
            if (r1 >= r5) goto L5c
            goto L5a
        L42:
            int r5 = r2.f1758w
            int r6 = r2.f1757h
            int r5 = java.lang.Math.max(r5, r6)
            if (r10 == 0) goto L5a
            if (r8 <= r4) goto L56
            org.telegram.tgnet.TLRPC$FileLocation r4 = r10.location
            if (r4 == 0) goto L56
            int r4 = r4.dc_id
            if (r4 == r3) goto L5a
        L56:
            if (r5 > r8) goto L5c
            if (r1 >= r5) goto L5c
        L5a:
            r10 = r2
            r1 = r5
        L5c:
            int r0 = r0 + 1
            goto Lc
        L5f:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoader.getClosestVideoSizeWithSize(java.util.ArrayList, int, boolean, boolean):org.telegram.tgnet.TLRPC$VideoSize");
    }

    public static TLRPC$TL_photoPathSize getPathPhotoSize(ArrayList<TLRPC$PhotoSize> arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < arrayList.size(); i++) {
                TLRPC$PhotoSize tLRPC$PhotoSize = arrayList.get(i);
                if (!(tLRPC$PhotoSize instanceof TLRPC$TL_photoPathSize)) {
                    return (TLRPC$TL_photoPathSize) tLRPC$PhotoSize;
                }
            }
        }
        return null;
    }

    public static String getFileExtension(File file) {
        String name = file.getName();
        try {
            return name.substring(name.lastIndexOf(46) + 1);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String fixFileName(String str) {
        return str != null ? str.replaceAll("[\u0001-\u001f<>\u202e:\"/\\\\|?*\u007f]+", "").trim() : str;
    }

    public static String getDocumentFileName(TLRPC$Document tLRPC$Document) {
        String str = null;
        if (tLRPC$Document == null) {
            return null;
        }
        String str2 = tLRPC$Document.file_name_fixed;
        if (str2 != null) {
            return str2;
        }
        String str3 = tLRPC$Document.file_name;
        if (str3 == null) {
            for (int i = 0; i < tLRPC$Document.attributes.size(); i++) {
                TLRPC$DocumentAttribute tLRPC$DocumentAttribute = tLRPC$Document.attributes.get(i);
                if (tLRPC$DocumentAttribute instanceof TLRPC$TL_documentAttributeFilename) {
                    str = tLRPC$DocumentAttribute.file_name;
                }
            }
            str3 = str;
        }
        String fixFileName = fixFileName(str3);
        return fixFileName != null ? fixFileName : "";
    }

    public static String getMimeTypePart(String str) {
        int lastIndexOf = str.lastIndexOf(47);
        return lastIndexOf != -1 ? str.substring(lastIndexOf + 1) : "";
    }

    public static String getExtensionByMimeType(String str) {
        if (str != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case 187091926:
                    if (str.equals(MimeTypes.AUDIO_OGG)) {
                        c = 0;
                        break;
                    }
                    break;
                case 1331848029:
                    if (str.equals(MimeTypes.VIDEO_MP4)) {
                        c = 1;
                        break;
                    }
                    break;
                case 2039520277:
                    if (str.equals(MimeTypes.VIDEO_MATROSKA)) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return ".ogg";
                case 1:
                    return ".mp4";
                case 2:
                    return ".mkv";
                default:
                    return "";
            }
        }
        return "";
    }

    public static File getInternalCacheDir() {
        return ApplicationLoader.applicationContext.getCacheDir();
    }

    public static String getDocumentExtension(TLRPC$Document tLRPC$Document) {
        String documentFileName = getDocumentFileName(tLRPC$Document);
        int lastIndexOf = documentFileName.lastIndexOf(46);
        String substring = lastIndexOf != -1 ? documentFileName.substring(lastIndexOf + 1) : null;
        if (substring == null || substring.length() == 0) {
            substring = tLRPC$Document.mime_type;
        }
        if (substring == null) {
            substring = "";
        }
        return substring.toUpperCase();
    }

    public static String getAttachFileName(TLObject tLObject) {
        return getAttachFileName(tLObject, null);
    }

    public static String getAttachFileName(TLObject tLObject, String str) {
        return getAttachFileName(tLObject, null, str);
    }

    public static String getAttachFileName(TLObject tLObject, String str, String str2) {
        if (tLObject instanceof TLRPC$Document) {
            TLRPC$Document tLRPC$Document = (TLRPC$Document) tLObject;
            String documentFileName = getDocumentFileName(tLRPC$Document);
            int lastIndexOf = documentFileName.lastIndexOf(46);
            String substring = lastIndexOf != -1 ? documentFileName.substring(lastIndexOf) : "";
            if (substring.length() <= 1) {
                substring = getExtensionByMimeType(tLRPC$Document.mime_type);
            }
            if (substring.length() > 1) {
                return tLRPC$Document.dc_id + "_" + tLRPC$Document.f1610id + substring;
            }
            return tLRPC$Document.dc_id + "_" + tLRPC$Document.f1610id;
        } else if (tLObject instanceof SecureDocument) {
            SecureDocument secureDocument = (SecureDocument) tLObject;
            return secureDocument.secureFile.dc_id + "_" + secureDocument.secureFile.f1733id + ".jpg";
        } else if (tLObject instanceof TLRPC$TL_secureFile) {
            TLRPC$TL_secureFile tLRPC$TL_secureFile = (TLRPC$TL_secureFile) tLObject;
            return tLRPC$TL_secureFile.dc_id + "_" + tLRPC$TL_secureFile.f1733id + ".jpg";
        } else if (tLObject instanceof WebFile) {
            WebFile webFile = (WebFile) tLObject;
            return Utilities.MD5(webFile.url) + "." + ImageLoader.getHttpUrlExtension(webFile.url, getMimeTypePart(webFile.mime_type));
        } else if (tLObject instanceof TLRPC$PhotoSize) {
            TLRPC$PhotoSize tLRPC$PhotoSize = (TLRPC$PhotoSize) tLObject;
            TLRPC$FileLocation tLRPC$FileLocation = tLRPC$PhotoSize.location;
            if (tLRPC$FileLocation == null || (tLRPC$FileLocation instanceof TLRPC$TL_fileLocationUnavailable)) {
                return "";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(tLRPC$PhotoSize.location.volume_id);
            sb.append("_");
            sb.append(tLRPC$PhotoSize.location.local_id);
            sb.append(".");
            if (str2 == null) {
                str2 = "jpg";
            }
            sb.append(str2);
            return sb.toString();
        } else if (tLObject instanceof TLRPC$TL_videoSize) {
            TLRPC$TL_videoSize tLRPC$TL_videoSize = (TLRPC$TL_videoSize) tLObject;
            TLRPC$FileLocation tLRPC$FileLocation2 = tLRPC$TL_videoSize.location;
            if (tLRPC$FileLocation2 == null || (tLRPC$FileLocation2 instanceof TLRPC$TL_fileLocationUnavailable)) {
                return "";
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(tLRPC$TL_videoSize.location.volume_id);
            sb2.append("_");
            sb2.append(tLRPC$TL_videoSize.location.local_id);
            sb2.append(".");
            if (str2 == null) {
                str2 = "mp4";
            }
            sb2.append(str2);
            return sb2.toString();
        } else if (tLObject instanceof TLRPC$FileLocation) {
            if (tLObject instanceof TLRPC$TL_fileLocationUnavailable) {
                return "";
            }
            TLRPC$FileLocation tLRPC$FileLocation3 = (TLRPC$FileLocation) tLObject;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(tLRPC$FileLocation3.volume_id);
            sb3.append("_");
            sb3.append(tLRPC$FileLocation3.local_id);
            sb3.append(".");
            if (str2 == null) {
                str2 = "jpg";
            }
            sb3.append(str2);
            return sb3.toString();
        } else if (tLObject instanceof TLRPC$UserProfilePhoto) {
            if (str == null) {
                str = "s";
            }
            TLRPC$UserProfilePhoto tLRPC$UserProfilePhoto = (TLRPC$UserProfilePhoto) tLObject;
            if (tLRPC$UserProfilePhoto.photo_small != null) {
                if ("s".equals(str)) {
                    return getAttachFileName(tLRPC$UserProfilePhoto.photo_small, str2);
                }
                return getAttachFileName(tLRPC$UserProfilePhoto.photo_big, str2);
            }
            StringBuilder sb4 = new StringBuilder();
            sb4.append(tLRPC$UserProfilePhoto.photo_id);
            sb4.append("_");
            sb4.append(str);
            sb4.append(".");
            if (str2 == null) {
                str2 = "jpg";
            }
            sb4.append(str2);
            return sb4.toString();
        } else if (tLObject instanceof TLRPC$ChatPhoto) {
            TLRPC$ChatPhoto tLRPC$ChatPhoto = (TLRPC$ChatPhoto) tLObject;
            if (tLRPC$ChatPhoto.photo_small != null) {
                if ("s".equals(str)) {
                    return getAttachFileName(tLRPC$ChatPhoto.photo_small, str2);
                }
                return getAttachFileName(tLRPC$ChatPhoto.photo_big, str2);
            }
            StringBuilder sb5 = new StringBuilder();
            sb5.append(tLRPC$ChatPhoto.photo_id);
            sb5.append("_");
            sb5.append(str);
            sb5.append(".");
            if (str2 == null) {
                str2 = "jpg";
            }
            sb5.append(str2);
            return sb5.toString();
        } else {
            return "";
        }
    }

    public void deleteFiles(final ArrayList<File> arrayList, final int i) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        fileLoaderQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.lambda$deleteFiles$15(arrayList, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$deleteFiles$15(ArrayList arrayList, int i) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            File file = (File) arrayList.get(i2);
            File file2 = new File(file.getAbsolutePath() + ".enc");
            if (file2.exists()) {
                try {
                    if (!file2.delete()) {
                        file2.deleteOnExit();
                    }
                } catch (Exception e) {
                    FileLog.m102e(e);
                }
                try {
                    File internalCacheDir = getInternalCacheDir();
                    File file3 = new File(internalCacheDir, file.getName() + ".enc.key");
                    if (!file3.delete()) {
                        file3.deleteOnExit();
                    }
                } catch (Exception e2) {
                    FileLog.m102e(e2);
                }
            } else if (file.exists()) {
                try {
                    if (!file.delete()) {
                        file.deleteOnExit();
                    }
                } catch (Exception e3) {
                    FileLog.m102e(e3);
                }
            }
            try {
                File parentFile = file.getParentFile();
                File file4 = new File(parentFile, "q_" + file.getName());
                if (file4.exists() && !file4.delete()) {
                    file4.deleteOnExit();
                }
            } catch (Exception e4) {
                FileLog.m102e(e4);
            }
        }
        if (i == 2) {
            ImageLoader.getInstance().clearMemory();
        }
    }

    public static boolean isVideoMimeType(String str) {
        return MimeTypes.VIDEO_MP4.equals(str) || (SharedConfig.streamMkv && MimeTypes.VIDEO_MATROSKA.equals(str));
    }

    public static boolean copyFile(InputStream inputStream, File file) throws IOException {
        return copyFile(inputStream, file, -1);
    }

    public static boolean copyFile(InputStream inputStream, File file, int i) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        byte[] bArr = new byte[4096];
        int i2 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                break;
            }
            Thread.yield();
            fileOutputStream.write(bArr, 0, read);
            i2 += read;
            if (i > 0 && i2 >= i) {
                break;
            }
        }
        fileOutputStream.getFD().sync();
        fileOutputStream.close();
        return true;
    }

    public static boolean isSamePhoto(TLObject tLObject, TLObject tLObject2) {
        if ((tLObject != null || tLObject2 == null) && (tLObject == null || tLObject2 != null)) {
            if (tLObject == null && tLObject2 == null) {
                return true;
            }
            if (tLObject.getClass() != tLObject2.getClass()) {
                return false;
            }
            return tLObject instanceof TLRPC$UserProfilePhoto ? ((TLRPC$UserProfilePhoto) tLObject).photo_id == ((TLRPC$UserProfilePhoto) tLObject2).photo_id : (tLObject instanceof TLRPC$ChatPhoto) && ((TLRPC$ChatPhoto) tLObject).photo_id == ((TLRPC$ChatPhoto) tLObject2).photo_id;
        }
        return false;
    }

    public static boolean isSamePhoto(TLRPC$FileLocation tLRPC$FileLocation, TLRPC$Photo tLRPC$Photo) {
        if (tLRPC$FileLocation != null && (tLRPC$Photo instanceof TLRPC$TL_photo)) {
            int size = tLRPC$Photo.sizes.size();
            for (int i = 0; i < size; i++) {
                TLRPC$FileLocation tLRPC$FileLocation2 = tLRPC$Photo.sizes.get(i).location;
                if (tLRPC$FileLocation2 != null && tLRPC$FileLocation2.local_id == tLRPC$FileLocation.local_id && tLRPC$FileLocation2.volume_id == tLRPC$FileLocation.volume_id) {
                    return true;
                }
            }
            if ((-tLRPC$FileLocation.volume_id) == tLRPC$Photo.f1632id) {
                return true;
            }
        }
        return false;
    }

    public static long getPhotoId(TLObject tLObject) {
        if (tLObject instanceof TLRPC$Photo) {
            return ((TLRPC$Photo) tLObject).f1632id;
        }
        if (tLObject instanceof TLRPC$ChatPhoto) {
            return ((TLRPC$ChatPhoto) tLObject).photo_id;
        }
        if (tLObject instanceof TLRPC$UserProfilePhoto) {
            return ((TLRPC$UserProfilePhoto) tLObject).photo_id;
        }
        return 0L;
    }

    public void getCurrentLoadingFiles(ArrayList<MessageObject> arrayList) {
        arrayList.clear();
        arrayList.addAll(getDownloadController().downloadingFiles);
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.get(i).isDownloadingFile = true;
        }
    }

    public void getRecentLoadingFiles(ArrayList<MessageObject> arrayList) {
        arrayList.clear();
        arrayList.addAll(getDownloadController().recentDownloadingFiles);
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.get(i).isDownloadingFile = true;
        }
    }

    public void checkCurrentDownloadsFiles() {
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(getDownloadController().recentDownloadingFiles);
        for (int i = 0; i < arrayList2.size(); i++) {
            ((MessageObject) arrayList2.get(i)).checkMediaExistance();
            if (((MessageObject) arrayList2.get(i)).mediaExists) {
                arrayList.add((MessageObject) arrayList2.get(i));
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.FileLoader$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                FileLoader.this.lambda$checkCurrentDownloadsFiles$16(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkCurrentDownloadsFiles$16(ArrayList arrayList) {
        getDownloadController().recentDownloadingFiles.removeAll(arrayList);
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.onDownloadingFilesChanged, new Object[0]);
    }

    public void checkMediaExistance(ArrayList<MessageObject> arrayList) {
        getFileDatabase().checkMediaExistance(arrayList);
    }

    public void clearRecentDownloadedFiles() {
        getDownloadController().clearRecentDownloadedFiles();
    }

    public void clearFilePaths() {
        this.filePathDatabase.clear();
    }

    public static boolean checkUploadFileSize(int i, long j) {
        boolean isPremium = AccountInstance.getInstance(i).getUserConfig().isPremium();
        if (j >= DEFAULT_MAX_FILE_SIZE) {
            return j < 4194304000L && isPremium;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class LoadOperationUIObject {
        Runnable loadInternalRunnable;

        private LoadOperationUIObject() {
        }

        /* synthetic */ LoadOperationUIObject(C35701 c35701) {
            this();
        }
    }

    public static byte[] longToBytes(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.putLong(j);
        return allocate.array();
    }

    public static long bytesToLong(byte[] bArr) {
        long j = 0;
        for (int i = 0; i < 8; i++) {
            j = (j << 8) ^ (bArr[i] & 255);
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$17() {
        int i = 0;
        while (true) {
            FileLoaderPriorityQueue[] fileLoaderPriorityQueueArr = this.smallFilesQueue;
            if (i < fileLoaderPriorityQueueArr.length) {
                if (fileLoaderPriorityQueueArr[i].getCount() > 0 || this.largeFilesQueue[i].getCount() > 0) {
                    FileLog.m105d("download queue: dc" + (i + 1) + " account=" + this.currentAccount + " small_operations=" + this.smallFilesQueue[i].getCount() + " large_operations=" + this.largeFilesQueue[i].getCount());
                }
                i++;
            } else {
                dumpFilesQueue();
                return;
            }
        }
    }

    public void dumpFilesQueue() {
        if (BuildVars.LOGS_ENABLED) {
            fileLoaderQueue.cancelRunnable(this.dumpFilesQueueRunnable);
            fileLoaderQueue.postRunnable(this.dumpFilesQueueRunnable, 10000L);
        }
    }
}
