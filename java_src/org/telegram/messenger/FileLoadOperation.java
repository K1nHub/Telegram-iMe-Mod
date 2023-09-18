package org.telegram.messenger;

import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import org.telegram.messenger.FileLoadOperation;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.utils.ImmutableByteArrayOutputStream;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.Storage.CacheModel;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$InputFileLocation;
import org.telegram.tgnet.TLRPC$InputWebFileLocation;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_fileHash;
import org.telegram.tgnet.TLRPC$TL_fileLocationToBeDeprecated;
import org.telegram.tgnet.TLRPC$TL_inputDocumentFileLocation;
import org.telegram.tgnet.TLRPC$TL_inputPeerPhotoFileLocation;
import org.telegram.tgnet.TLRPC$TL_inputPhotoFileLocation;
import org.telegram.tgnet.TLRPC$TL_inputStickerSetThumb;
import org.telegram.tgnet.TLRPC$TL_secureFile;
import org.telegram.tgnet.TLRPC$TL_upload_cdnFile;
import org.telegram.tgnet.TLRPC$TL_upload_cdnFileReuploadNeeded;
import org.telegram.tgnet.TLRPC$TL_upload_file;
import org.telegram.tgnet.TLRPC$TL_upload_fileCdnRedirect;
import org.telegram.tgnet.TLRPC$TL_upload_getCdnFile;
import org.telegram.tgnet.TLRPC$TL_upload_getCdnFileHashes;
import org.telegram.tgnet.TLRPC$TL_upload_reuploadCdnFile;
import org.telegram.tgnet.TLRPC$TL_upload_webFile;
import org.telegram.tgnet.TLRPC$Vector;
import org.telegram.tgnet.TLRPC$WebPage;
/* loaded from: classes6.dex */
public class FileLoadOperation {
    private static final int FINISH_CODE_DEFAULT = 0;
    private static final int FINISH_CODE_FILE_ALREADY_EXIST = 1;
    public static ImmutableByteArrayOutputStream filesQueueByteBuffer = null;
    private static int globalRequestPointer = 0;
    private static final int preloadMaxBytes = 2097152;
    private static final int stateCanceled = 4;
    private static final int stateDownloading = 1;
    private static final int stateFailed = 2;
    private static final int stateFinished = 3;
    private static final int stateIdle = 0;
    private final boolean FULL_LOGS;
    private boolean allowDisordererFileSave;
    private int bigFileSizeFrom;
    private long bytesCountPadding;
    private File cacheFileFinal;
    private File cacheFileGzipTemp;
    private File cacheFileParts;
    private File cacheFilePreload;
    private File cacheFileTemp;
    private File cacheIvTemp;
    private byte[] cdnCheckBytes;
    private int cdnChunkCheckSize;
    private int cdnDatacenterId;
    private HashMap<Long, TLRPC$TL_fileHash> cdnHashes;
    private byte[] cdnIv;
    private byte[] cdnKey;
    private byte[] cdnToken;
    public int currentAccount;
    private int currentDownloadChunkSize;
    private int currentMaxDownloadRequests;
    private int currentType;
    private int datacenterId;
    private ArrayList<RequestInfo> delayedRequestInfos;
    private FileLoadOperationDelegate delegate;
    private int downloadChunkSize;
    private int downloadChunkSizeAnimation;
    private int downloadChunkSizeBig;
    private long downloadedBytes;
    private boolean encryptFile;
    private byte[] encryptIv;
    private byte[] encryptKey;
    private String ext;
    private FilePathDatabase.FileMeta fileMetadata;
    private String fileName;
    private RandomAccessFile fileOutputStream;
    private RandomAccessFile filePartsStream;
    private RandomAccessFile fileReadStream;
    private Runnable fileWriteRunnable;
    private RandomAccessFile fiv;
    private boolean forceSmallChunk;
    private long foundMoovSize;
    private int initialDatacenterId;
    private boolean isCdn;
    private boolean isForceRequest;
    private boolean isPreloadVideoOperation;
    public boolean isStory;
    private boolean isStream;

    /* renamed from: iv */
    private byte[] f1447iv;
    private byte[] key;
    protected long lastProgressUpdateTime;
    protected TLRPC$InputFileLocation location;
    private int maxCdnParts;
    private int maxDownloadRequests;
    private int maxDownloadRequestsAnimation;
    private int maxDownloadRequestsBig;
    private int moovFound;
    private long nextAtomOffset;
    private boolean nextPartWasPreloaded;
    private long nextPreloadDownloadOffset;
    private ArrayList<Range> notCheckedCdnRanges;
    private ArrayList<Range> notLoadedBytesRanges;
    private volatile ArrayList<Range> notLoadedBytesRangesCopy;
    private ArrayList<Range> notRequestedBytesRanges;
    public Object parentObject;
    public FilePathDatabase.PathData pathSaveData;
    private volatile boolean paused;
    public boolean preFinished;
    private boolean preloadFinished;
    private long preloadNotRequestedBytesCount;
    private int preloadPrefixSize;
    private RandomAccessFile preloadStream;
    private int preloadStreamFileOffset;
    private byte[] preloadTempBuffer;
    private int preloadTempBufferCount;
    private HashMap<Long, PreloadRange> preloadedBytesRanges;
    private int priority;
    private FileLoaderPriorityQueue priorityQueue;
    private RequestInfo priorityRequestInfo;
    private int renameRetryCount;
    private ArrayList<RequestInfo> requestInfos;
    private long requestedBytesCount;
    private HashMap<Long, Integer> requestedPreloadedBytesRanges;
    private boolean requestingCdnOffsets;
    protected boolean requestingReference;
    private int requestsCount;
    private boolean reuploadingCdn;
    private long startTime;
    private boolean started;
    private volatile int state;
    private String storeFileName;
    private File storePath;
    FileLoadOperationStream stream;
    private ArrayList<FileLoadOperationStream> streamListeners;
    long streamOffset;
    boolean streamPriority;
    private long streamPriorityStartOffset;
    private long streamStartOffset;
    private boolean supportsPreloading;
    private File tempPath;
    public long totalBytesCount;
    private int totalPreloadedBytes;
    long totalTime;
    private boolean ungzip;
    private WebFile webFile;
    private TLRPC$InputWebFileLocation webLocation;
    public static volatile DispatchQueue filesQueue = new DispatchQueue("writeFileQueue");
    private static final Object lockObject = new Object();

    /* loaded from: classes6.dex */
    public interface FileLoadOperationDelegate {
        void didChangedLoadProgress(FileLoadOperation fileLoadOperation, long j, long j2);

        void didFailedLoadingFile(FileLoadOperation fileLoadOperation, int i);

        void didFinishLoadingFile(FileLoadOperation fileLoadOperation, File file);

        void didPreFinishLoading(FileLoadOperation fileLoadOperation, File file);

        boolean hasAnotherRefOnFile(String str);

        void saveFilePath(FilePathDatabase.PathData pathData, File file);
    }

    public void setStream(final FileLoadOperationStream fileLoadOperationStream, boolean z, long j) {
        this.stream = fileLoadOperationStream;
        this.streamOffset = j;
        this.streamPriority = z;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$setStream$0(fileLoadOperationStream);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setStream$0(FileLoadOperationStream fileLoadOperationStream) {
        if (this.streamListeners == null) {
            this.streamListeners = new ArrayList<>();
        }
        if (fileLoadOperationStream != null && !this.streamListeners.contains(fileLoadOperationStream)) {
            this.streamListeners.add(fileLoadOperationStream);
        }
        if (fileLoadOperationStream == null || this.state == 1 || this.state == 0) {
            return;
        }
        fileLoadOperationStream.newDataAvailable();
    }

    public int getPositionInQueue() {
        return getQueue().getPosition(this);
    }

    public boolean checkPrefixPreloadFinished() {
        int i = this.preloadPrefixSize;
        if (i > 0 && this.downloadedBytes > i) {
            long j = Long.MAX_VALUE;
            ArrayList<Range> arrayList = this.notLoadedBytesRanges;
            if (arrayList == null) {
                return true;
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                try {
                    j = Math.min(j, arrayList.get(i2).start);
                } catch (Throwable th) {
                    FileLog.m67e(th);
                    return true;
                }
            }
            if (j > this.preloadPrefixSize) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes6.dex */
    public static class RequestInfo {
        public int chunkSize;
        public int connectionType;
        private boolean forceSmallChunk;
        private long offset;
        public long requestStartTime;
        private int requestToken;
        private TLRPC$TL_upload_file response;
        private TLRPC$TL_upload_cdnFile responseCdn;
        private TLRPC$TL_upload_webFile responseWeb;

        protected RequestInfo() {
        }
    }

    /* loaded from: classes6.dex */
    public static class Range {
        private long end;
        private long start;

        private Range(long j, long j2) {
            this.start = j;
            this.end = j2;
        }

        public String toString() {
            return "Range{start=" + this.start + ", end=" + this.end + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class PreloadRange {
        private long fileOffset;
        private long length;

        private PreloadRange(long j, long j2) {
            this.fileOffset = j;
            this.length = j2;
        }
    }

    private void updateParams() {
        if ((this.preloadPrefixSize > 0 || MessagesController.getInstance(this.currentAccount).getfileExperimentalParams) && !this.forceSmallChunk) {
            this.downloadChunkSizeBig = 524288;
            this.maxDownloadRequests = 8;
            this.maxDownloadRequestsBig = 8;
        } else {
            this.downloadChunkSizeBig = 131072;
            this.maxDownloadRequests = 4;
            this.maxDownloadRequestsBig = 4;
        }
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / this.downloadChunkSizeBig);
    }

    public FileLoadOperation(ImageLocation imageLocation, Object obj, String str, long j) {
        boolean z = false;
        this.FULL_LOGS = false;
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        updateParams();
        this.parentObject = obj;
        this.fileMetadata = FileLoader.getFileMetadataFromParent(this.currentAccount, obj);
        this.isStream = imageLocation.imageType == 2;
        if (imageLocation.isEncrypted()) {
            TLRPC$InputFileLocation tLRPC$InputFileLocation = new TLRPC$InputFileLocation() { // from class: org.telegram.tgnet.TLRPC$TL_inputEncryptedFileLocation
                public static int constructor = -182231723;

                @Override // org.telegram.tgnet.TLObject
                public void readParams(AbstractSerializedData abstractSerializedData, boolean z2) {
                    this.f1541id = abstractSerializedData.readInt64(z2);
                    this.access_hash = abstractSerializedData.readInt64(z2);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                    abstractSerializedData.writeInt64(this.f1541id);
                    abstractSerializedData.writeInt64(this.access_hash);
                }
            };
            this.location = tLRPC$InputFileLocation;
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated = imageLocation.location;
            long j2 = tLRPC$TL_fileLocationToBeDeprecated.volume_id;
            tLRPC$InputFileLocation.f1541id = j2;
            tLRPC$InputFileLocation.volume_id = j2;
            tLRPC$InputFileLocation.local_id = tLRPC$TL_fileLocationToBeDeprecated.local_id;
            tLRPC$InputFileLocation.access_hash = imageLocation.access_hash;
            byte[] bArr = new byte[32];
            this.f1447iv = bArr;
            System.arraycopy(imageLocation.f1452iv, 0, bArr, 0, bArr.length);
            this.key = imageLocation.key;
        } else if (imageLocation.photoPeer != null) {
            TLRPC$TL_inputPeerPhotoFileLocation tLRPC$TL_inputPeerPhotoFileLocation = new TLRPC$TL_inputPeerPhotoFileLocation();
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated2 = imageLocation.location;
            long j3 = tLRPC$TL_fileLocationToBeDeprecated2.volume_id;
            tLRPC$TL_inputPeerPhotoFileLocation.f1541id = j3;
            tLRPC$TL_inputPeerPhotoFileLocation.volume_id = j3;
            tLRPC$TL_inputPeerPhotoFileLocation.local_id = tLRPC$TL_fileLocationToBeDeprecated2.local_id;
            tLRPC$TL_inputPeerPhotoFileLocation.photo_id = imageLocation.photoId;
            tLRPC$TL_inputPeerPhotoFileLocation.big = imageLocation.photoPeerType == 0;
            tLRPC$TL_inputPeerPhotoFileLocation.peer = imageLocation.photoPeer;
            this.location = tLRPC$TL_inputPeerPhotoFileLocation;
        } else if (imageLocation.stickerSet != null) {
            TLRPC$TL_inputStickerSetThumb tLRPC$TL_inputStickerSetThumb = new TLRPC$TL_inputStickerSetThumb();
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated3 = imageLocation.location;
            long j4 = tLRPC$TL_fileLocationToBeDeprecated3.volume_id;
            tLRPC$TL_inputStickerSetThumb.f1541id = j4;
            tLRPC$TL_inputStickerSetThumb.volume_id = j4;
            tLRPC$TL_inputStickerSetThumb.local_id = tLRPC$TL_fileLocationToBeDeprecated3.local_id;
            tLRPC$TL_inputStickerSetThumb.thumb_version = imageLocation.thumbVersion;
            tLRPC$TL_inputStickerSetThumb.stickerset = imageLocation.stickerSet;
            this.location = tLRPC$TL_inputStickerSetThumb;
        } else if (imageLocation.thumbSize != null) {
            if (imageLocation.photoId != 0) {
                TLRPC$TL_inputPhotoFileLocation tLRPC$TL_inputPhotoFileLocation = new TLRPC$TL_inputPhotoFileLocation();
                this.location = tLRPC$TL_inputPhotoFileLocation;
                tLRPC$TL_inputPhotoFileLocation.f1541id = imageLocation.photoId;
                TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated4 = imageLocation.location;
                tLRPC$TL_inputPhotoFileLocation.volume_id = tLRPC$TL_fileLocationToBeDeprecated4.volume_id;
                tLRPC$TL_inputPhotoFileLocation.local_id = tLRPC$TL_fileLocationToBeDeprecated4.local_id;
                tLRPC$TL_inputPhotoFileLocation.access_hash = imageLocation.access_hash;
                tLRPC$TL_inputPhotoFileLocation.file_reference = imageLocation.file_reference;
                tLRPC$TL_inputPhotoFileLocation.thumb_size = imageLocation.thumbSize;
                if (imageLocation.imageType == 2) {
                    this.allowDisordererFileSave = true;
                }
            } else {
                TLRPC$TL_inputDocumentFileLocation tLRPC$TL_inputDocumentFileLocation = new TLRPC$TL_inputDocumentFileLocation();
                this.location = tLRPC$TL_inputDocumentFileLocation;
                tLRPC$TL_inputDocumentFileLocation.f1541id = imageLocation.documentId;
                TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated5 = imageLocation.location;
                tLRPC$TL_inputDocumentFileLocation.volume_id = tLRPC$TL_fileLocationToBeDeprecated5.volume_id;
                tLRPC$TL_inputDocumentFileLocation.local_id = tLRPC$TL_fileLocationToBeDeprecated5.local_id;
                tLRPC$TL_inputDocumentFileLocation.access_hash = imageLocation.access_hash;
                tLRPC$TL_inputDocumentFileLocation.file_reference = imageLocation.file_reference;
                tLRPC$TL_inputDocumentFileLocation.thumb_size = imageLocation.thumbSize;
            }
            TLRPC$InputFileLocation tLRPC$InputFileLocation2 = this.location;
            if (tLRPC$InputFileLocation2.file_reference == null) {
                tLRPC$InputFileLocation2.file_reference = new byte[0];
            }
        } else {
            TLRPC$InputFileLocation tLRPC$InputFileLocation3 = new TLRPC$InputFileLocation() { // from class: org.telegram.tgnet.TLRPC$TL_inputFileLocation
                public static int constructor = -539317279;

                @Override // org.telegram.tgnet.TLObject
                public void readParams(AbstractSerializedData abstractSerializedData, boolean z2) {
                    this.volume_id = abstractSerializedData.readInt64(z2);
                    this.local_id = abstractSerializedData.readInt32(z2);
                    this.secret = abstractSerializedData.readInt64(z2);
                    this.file_reference = abstractSerializedData.readByteArray(z2);
                }

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                    abstractSerializedData.writeInt64(this.volume_id);
                    abstractSerializedData.writeInt32(this.local_id);
                    abstractSerializedData.writeInt64(this.secret);
                    abstractSerializedData.writeByteArray(this.file_reference);
                }
            };
            this.location = tLRPC$InputFileLocation3;
            TLRPC$TL_fileLocationToBeDeprecated tLRPC$TL_fileLocationToBeDeprecated6 = imageLocation.location;
            tLRPC$InputFileLocation3.volume_id = tLRPC$TL_fileLocationToBeDeprecated6.volume_id;
            tLRPC$InputFileLocation3.local_id = tLRPC$TL_fileLocationToBeDeprecated6.local_id;
            tLRPC$InputFileLocation3.secret = imageLocation.access_hash;
            byte[] bArr2 = imageLocation.file_reference;
            tLRPC$InputFileLocation3.file_reference = bArr2;
            if (bArr2 == null) {
                tLRPC$InputFileLocation3.file_reference = new byte[0];
            }
            this.allowDisordererFileSave = true;
        }
        int i = imageLocation.imageType;
        this.ungzip = (i == 1 || i == 3) ? true : z;
        int i2 = imageLocation.dc_id;
        this.datacenterId = i2;
        this.initialDatacenterId = i2;
        this.currentType = ConnectionsManager.FileTypePhoto;
        this.totalBytesCount = j;
        this.ext = str == null ? "jpg" : str;
    }

    public FileLoadOperation(SecureDocument secureDocument) {
        this.FULL_LOGS = false;
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        updateParams();
        TLRPC$InputFileLocation tLRPC$InputFileLocation = new TLRPC$InputFileLocation() { // from class: org.telegram.tgnet.TLRPC$TL_inputSecureFileLocation
            public static int constructor = -876089816;

            @Override // org.telegram.tgnet.TLObject
            public void readParams(AbstractSerializedData abstractSerializedData, boolean z) {
                this.f1541id = abstractSerializedData.readInt64(z);
                this.access_hash = abstractSerializedData.readInt64(z);
            }

            @Override // org.telegram.tgnet.TLObject
            public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                abstractSerializedData.writeInt32(constructor);
                abstractSerializedData.writeInt64(this.f1541id);
                abstractSerializedData.writeInt64(this.access_hash);
            }
        };
        this.location = tLRPC$InputFileLocation;
        TLRPC$TL_secureFile tLRPC$TL_secureFile = secureDocument.secureFile;
        tLRPC$InputFileLocation.f1541id = tLRPC$TL_secureFile.f1659id;
        tLRPC$InputFileLocation.access_hash = tLRPC$TL_secureFile.access_hash;
        this.datacenterId = tLRPC$TL_secureFile.dc_id;
        this.totalBytesCount = tLRPC$TL_secureFile.size;
        this.allowDisordererFileSave = true;
        this.currentType = ConnectionsManager.FileTypeFile;
        this.ext = ".jpg";
    }

    public FileLoadOperation(int i, WebFile webFile) {
        this.FULL_LOGS = false;
        this.downloadChunkSize = LiteMode.FLAG_CHAT_SCALE;
        this.downloadChunkSizeBig = 131072;
        this.cdnChunkCheckSize = 131072;
        this.maxDownloadRequests = 4;
        this.maxDownloadRequestsBig = 4;
        this.bigFileSizeFrom = 10485760;
        this.maxCdnParts = (int) (FileLoader.DEFAULT_MAX_FILE_SIZE / 131072);
        this.downloadChunkSizeAnimation = 131072;
        this.maxDownloadRequestsAnimation = 4;
        this.preloadTempBuffer = new byte[24];
        this.state = 0;
        updateParams();
        this.currentAccount = i;
        this.webFile = webFile;
        this.webLocation = webFile.location;
        this.totalBytesCount = webFile.size;
        int i2 = MessagesController.getInstance(i).webFileDatacenterId;
        this.datacenterId = i2;
        this.initialDatacenterId = i2;
        String mimeTypePart = FileLoader.getMimeTypePart(webFile.mime_type);
        if (webFile.mime_type.startsWith("image/")) {
            this.currentType = ConnectionsManager.FileTypePhoto;
        } else if (webFile.mime_type.equals(MimeTypes.AUDIO_OGG)) {
            this.currentType = ConnectionsManager.FileTypeAudio;
        } else if (webFile.mime_type.startsWith("video/")) {
            this.currentType = ConnectionsManager.FileTypeVideo;
        } else {
            this.currentType = ConnectionsManager.FileTypeFile;
        }
        this.allowDisordererFileSave = true;
        this.ext = ImageLoader.getHttpUrlExtension(webFile.url, mimeTypePart);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x010f A[Catch: Exception -> 0x0136, TryCatch #0 {Exception -> 0x0136, blocks: (B:3:0x0032, B:6:0x0042, B:18:0x00b4, B:20:0x00be, B:25:0x00cc, B:27:0x00d6, B:29:0x00e0, B:30:0x00e8, B:32:0x00f0, B:35:0x00fa, B:37:0x0105, B:39:0x010f, B:44:0x0125, B:46:0x012d, B:40:0x0114, B:42:0x011c, B:43:0x0121, B:36:0x0103, B:7:0x0068, B:9:0x006c, B:11:0x0083, B:12:0x0087, B:14:0x0098, B:16:0x00a2, B:17:0x00b1), top: B:51:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0114 A[Catch: Exception -> 0x0136, TryCatch #0 {Exception -> 0x0136, blocks: (B:3:0x0032, B:6:0x0042, B:18:0x00b4, B:20:0x00be, B:25:0x00cc, B:27:0x00d6, B:29:0x00e0, B:30:0x00e8, B:32:0x00f0, B:35:0x00fa, B:37:0x0105, B:39:0x010f, B:44:0x0125, B:46:0x012d, B:40:0x0114, B:42:0x011c, B:43:0x0121, B:36:0x0103, B:7:0x0068, B:9:0x006c, B:11:0x0083, B:12:0x0087, B:14:0x0098, B:16:0x00a2, B:17:0x00b1), top: B:51:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x012d A[Catch: Exception -> 0x0136, TRY_LEAVE, TryCatch #0 {Exception -> 0x0136, blocks: (B:3:0x0032, B:6:0x0042, B:18:0x00b4, B:20:0x00be, B:25:0x00cc, B:27:0x00d6, B:29:0x00e0, B:30:0x00e8, B:32:0x00f0, B:35:0x00fa, B:37:0x0105, B:39:0x010f, B:44:0x0125, B:46:0x012d, B:40:0x0114, B:42:0x011c, B:43:0x0121, B:36:0x0103, B:7:0x0068, B:9:0x006c, B:11:0x0083, B:12:0x0087, B:14:0x0098, B:16:0x00a2, B:17:0x00b1), top: B:51:0x0032 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FileLoadOperation(org.telegram.tgnet.TLRPC$Document r12, java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.<init>(org.telegram.tgnet.TLRPC$Document, java.lang.Object):void");
    }

    public void setEncryptFile(boolean z) {
        this.encryptFile = z;
        if (z) {
            this.allowDisordererFileSave = false;
        }
    }

    public int getDatacenterId() {
        return this.initialDatacenterId;
    }

    public void setForceRequest(boolean z) {
        this.isForceRequest = z;
    }

    public boolean isForceRequest() {
        return this.isForceRequest;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPaths(int i, String str, FileLoaderPriorityQueue fileLoaderPriorityQueue, File file, File file2, String str2) {
        this.storePath = file;
        this.tempPath = file2;
        this.currentAccount = i;
        this.fileName = str;
        this.storeFileName = str2;
        this.priorityQueue = fileLoaderPriorityQueue;
    }

    public FileLoaderPriorityQueue getQueue() {
        return this.priorityQueue;
    }

    public boolean wasStarted() {
        return this.started && !this.paused;
    }

    public int getCurrentType() {
        return this.currentType;
    }

    private void removePart(ArrayList<Range> arrayList, long j, long j2) {
        boolean z;
        if (arrayList == null || j2 < j) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Range range = arrayList.get(i2);
            if (j == range.end) {
                range.end = j2;
            } else if (j2 == range.start) {
                range.start = j;
            }
            z = true;
        }
        z = false;
        Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda17
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int lambda$removePart$1;
                lambda$removePart$1 = FileLoadOperation.lambda$removePart$1((FileLoadOperation.Range) obj, (FileLoadOperation.Range) obj2);
                return lambda$removePart$1;
            }
        });
        while (i < arrayList.size() - 1) {
            Range range2 = arrayList.get(i);
            int i3 = i + 1;
            Range range3 = arrayList.get(i3);
            if (range2.end == range3.start) {
                range2.end = range3.end;
                arrayList.remove(i3);
                i--;
            }
            i++;
        }
        if (z) {
            return;
        }
        arrayList.add(new Range(j, j2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int lambda$removePart$1(Range range, Range range2) {
        if (range.start > range2.start) {
            return 1;
        }
        return range.start < range2.start ? -1 : 0;
    }

    private void addPart(ArrayList<Range> arrayList, long j, long j2, boolean z) {
        if (arrayList == null || j2 < j) {
            return;
        }
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            Range range = arrayList.get(i);
            if (j <= range.start) {
                if (j2 < range.end) {
                    if (j2 > range.start) {
                        range.start = j2;
                    }
                } else {
                    arrayList.remove(i);
                }
                z2 = true;
                break;
            }
            if (j2 >= range.end) {
                if (j < range.end) {
                    range.end = j;
                }
            } else {
                arrayList.add(0, new Range(range.start, j));
                range.start = j2;
            }
            z2 = true;
            break;
        }
        if (z) {
            if (z2) {
                final ArrayList arrayList2 = new ArrayList(arrayList);
                if (this.fileWriteRunnable != null) {
                    filesQueue.cancelRunnable(this.fileWriteRunnable);
                }
                DispatchQueue dispatchQueue = filesQueue;
                Runnable runnable = new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLoadOperation.this.lambda$addPart$2(arrayList2);
                    }
                };
                this.fileWriteRunnable = runnable;
                dispatchQueue.postRunnable(runnable);
                notifyStreamListeners();
            } else if (BuildVars.LOGS_ENABLED) {
                FileLog.m69e(this.cacheFileFinal + " downloaded duplicate file part " + j + " - " + j2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addPart$2(ArrayList arrayList) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e) {
            FileLog.m66e((Throwable) e, false);
            if (AndroidUtilities.isENOSPC(e)) {
                LaunchActivity.checkFreeDiscSpaceStatic(1);
            } else if (AndroidUtilities.isEROFS(e)) {
                SharedConfig.checkSdCard(this.cacheFileFinal);
            }
        }
        if (this.filePartsStream == null) {
            return;
        }
        int size = arrayList.size();
        int i = (size * 16) + 4;
        ImmutableByteArrayOutputStream immutableByteArrayOutputStream = filesQueueByteBuffer;
        if (immutableByteArrayOutputStream == null) {
            filesQueueByteBuffer = new ImmutableByteArrayOutputStream(i);
        } else {
            immutableByteArrayOutputStream.reset();
        }
        filesQueueByteBuffer.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            Range range = (Range) arrayList.get(i2);
            filesQueueByteBuffer.writeLong(range.start);
            filesQueueByteBuffer.writeLong(range.end);
        }
        synchronized (this) {
            RandomAccessFile randomAccessFile = this.filePartsStream;
            if (randomAccessFile == null) {
                return;
            }
            randomAccessFile.seek(0L);
            this.filePartsStream.write(filesQueueByteBuffer.buf, 0, i);
            this.totalTime += System.currentTimeMillis() - currentTimeMillis;
        }
    }

    private void notifyStreamListeners() {
        ArrayList<FileLoadOperationStream> arrayList = this.streamListeners;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                this.streamListeners.get(i).newDataAvailable();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getCacheFileFinal() {
        return this.cacheFileFinal;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getCurrentFile() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final File[] fileArr = new File[1];
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$getCurrentFile$3(fileArr, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception e) {
            FileLog.m67e(e);
        }
        return fileArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCurrentFile$3(File[] fileArr, CountDownLatch countDownLatch) {
        if (this.state == 3 && !this.preloadFinished) {
            fileArr[0] = this.cacheFileFinal;
        } else {
            fileArr[0] = this.cacheFileTemp;
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public File getCurrentFileFast() {
        if (this.state == 3 && !this.preloadFinished) {
            return this.cacheFileFinal;
        }
        return this.cacheFileTemp;
    }

    private long getDownloadedLengthFromOffsetInternal(ArrayList<Range> arrayList, long j, long j2) {
        long j3;
        if (arrayList == null || this.state == 3 || arrayList.isEmpty()) {
            if (this.state == 3) {
                return j2;
            }
            long j4 = this.downloadedBytes;
            if (j4 == 0) {
                return 0L;
            }
            return Math.min(j2, Math.max(j4 - j, 0L));
        }
        int size = arrayList.size();
        Range range = null;
        int i = 0;
        while (true) {
            if (i >= size) {
                j3 = j2;
                break;
            }
            Range range2 = arrayList.get(i);
            if (j <= range2.start && (range == null || range2.start < range.start)) {
                range = range2;
            }
            if (range2.start <= j && range2.end > j) {
                j3 = 0;
                break;
            }
            i++;
        }
        if (j3 == 0) {
            return 0L;
        }
        if (range != null) {
            return Math.min(j2, range.start - j);
        }
        return Math.min(j2, Math.max(this.totalBytesCount - j, 0L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getDownloadedLengthFromOffset(float f) {
        ArrayList<Range> arrayList = this.notLoadedBytesRangesCopy;
        long j = this.totalBytesCount;
        return (j == 0 || arrayList == null) ? BitmapDescriptorFactory.HUE_RED : f + (((float) getDownloadedLengthFromOffsetInternal(arrayList, (int) (((float) j) * f), j)) / ((float) this.totalBytesCount));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long[] getDownloadedLengthFromOffset(final long j, final long j2) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final long[] jArr = new long[2];
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$getDownloadedLengthFromOffset$4(jArr, j, j2, countDownLatch);
            }
        });
        try {
            countDownLatch.await();
        } catch (Exception unused) {
        }
        return jArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getDownloadedLengthFromOffset$4(long[] jArr, long j, long j2, CountDownLatch countDownLatch) {
        try {
            jArr[0] = getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, j, j2);
        } catch (Throwable th) {
            FileLog.m67e(th);
            jArr[0] = 0;
        }
        if (this.state == 3) {
            jArr[1] = 1;
        }
        countDownLatch.countDown();
    }

    public String getFileName() {
        return this.fileName;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeStreamListener(final FileLoadOperationStream fileLoadOperationStream) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$removeStreamListener$5(fileLoadOperationStream);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeStreamListener$5(FileLoadOperationStream fileLoadOperationStream) {
        ArrayList<FileLoadOperationStream> arrayList = this.streamListeners;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(fileLoadOperationStream);
    }

    private void copyNotLoadedRanges() {
        if (this.notLoadedBytesRanges == null) {
            return;
        }
        this.notLoadedBytesRangesCopy = new ArrayList<>(this.notLoadedBytesRanges);
    }

    public void pause() {
        if (this.state != 1) {
            return;
        }
        this.paused = true;
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$pause$6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pause$6() {
        if (this.isStory) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m70d("debug_loading:" + this.cacheFileFinal.getName() + " pause operation, clear requests");
            }
            clearOperaion(null, false);
            return;
        }
        for (int i = 0; i < this.requestInfos.size(); i++) {
            ConnectionsManager.getInstance(this.currentAccount).failNotRunningRequest(this.requestInfos.get(i).requestToken);
        }
    }

    public boolean start() {
        return start(this.stream, this.streamOffset, this.streamPriority);
    }

    /* JADX WARN: Code restructure failed: missing block: B:128:0x0414, code lost:
        if (r10 != r27.cacheFileFinal.length()) goto L70;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0668  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0694  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0714  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x073e  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x079b  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x07c6  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x07f2  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x083b  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x08a9  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x08ce A[Catch: Exception -> 0x08d4, TRY_LEAVE, TryCatch #3 {Exception -> 0x08d4, blocks: (B:333:0x08bd, B:335:0x08ce), top: B:378:0x08bd }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0900  */
    /* JADX WARN: Removed duplicated region for block: B:350:0x0904  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0914  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x0673 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v38, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v43 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean start(org.telegram.messenger.FileLoadOperationStream r28, final long r29, final boolean r31) {
        /*
            Method dump skipped, instructions count: 2395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.start(org.telegram.messenger.FileLoadOperationStream, long, boolean):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$7(boolean z, long j, boolean z2) {
        if (this.streamListeners == null) {
            this.streamListeners = new ArrayList<>();
        }
        if (z) {
            int i = this.currentDownloadChunkSize;
            long j2 = (j / i) * i;
            RequestInfo requestInfo = this.priorityRequestInfo;
            if (requestInfo != null && requestInfo.offset != j2) {
                this.requestInfos.remove(this.priorityRequestInfo);
                this.requestedBytesCount -= this.currentDownloadChunkSize;
                removePart(this.notRequestedBytesRanges, this.priorityRequestInfo.offset, this.currentDownloadChunkSize + this.priorityRequestInfo.offset);
                if (this.priorityRequestInfo.requestToken != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.priorityRequestInfo.requestToken, true);
                    this.requestsCount--;
                }
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m70d("frame get cancel request at offset " + this.priorityRequestInfo.offset);
                }
                this.priorityRequestInfo = null;
            }
            if (this.priorityRequestInfo == null) {
                this.streamPriorityStartOffset = j2;
            }
        } else {
            int i2 = this.currentDownloadChunkSize;
            this.streamStartOffset = (j / i2) * i2;
        }
        if (z2) {
            if (this.preloadedBytesRanges != null && getDownloadedLengthFromOffsetInternal(this.notLoadedBytesRanges, this.streamStartOffset, 1L) == 0 && this.preloadedBytesRanges.get(Long.valueOf(this.streamStartOffset)) != null) {
                this.nextPartWasPreloaded = true;
            }
            startDownloadRequest(-1);
            this.nextPartWasPreloaded = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$8() {
        startDownloadRequest(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$9(boolean[] zArr) {
        boolean z = this.isPreloadVideoOperation && zArr[0];
        int i = this.preloadPrefixSize;
        boolean z2 = i > 0 && this.downloadedBytes >= ((long) i) && canFinishPreload();
        long j = this.totalBytesCount;
        if (j != 0 && (z || this.downloadedBytes == j || z2)) {
            try {
                onFinishLoadingFile(false, 1, true);
                return;
            } catch (Exception unused) {
                onFail(true, 0);
                return;
            }
        }
        startDownloadRequest(-1);
    }

    public void updateProgress() {
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            long j = this.downloadedBytes;
            long j2 = this.totalBytesCount;
            if (j == j2 || j2 <= 0) {
                return;
            }
            fileLoadOperationDelegate.didChangedLoadProgress(this, j, j2);
        }
    }

    public boolean isPaused() {
        return this.paused;
    }

    public void setIsPreloadVideoOperation(final boolean z) {
        boolean z2 = this.isPreloadVideoOperation;
        if (z2 != z) {
            if (!z || this.totalBytesCount > 2097152) {
                if (!z && z2) {
                    if (this.state == 3) {
                        this.isPreloadVideoOperation = z;
                        this.state = 0;
                        this.preloadFinished = false;
                        start();
                        return;
                    } else if (this.state == 1) {
                        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda9
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileLoadOperation.this.lambda$setIsPreloadVideoOperation$10(z);
                            }
                        });
                        return;
                    } else {
                        this.isPreloadVideoOperation = z;
                        return;
                    }
                }
                this.isPreloadVideoOperation = z;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setIsPreloadVideoOperation$10(boolean z) {
        this.requestedBytesCount = 0L;
        clearOperaion(null, true);
        this.isPreloadVideoOperation = z;
        startDownloadRequest(-1);
    }

    public boolean isPreloadVideoOperation() {
        return this.isPreloadVideoOperation;
    }

    public boolean isPreloadFinished() {
        return this.preloadFinished;
    }

    public void cancel() {
        cancel(false);
    }

    private void cancel(final boolean z) {
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$cancel$11(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancel$11(boolean z) {
        if (this.state != 3 && this.state != 2) {
            cancelRequests();
            onFail(false, 1);
        }
        if (z) {
            File file = this.cacheFileFinal;
            if (file != null) {
                try {
                    if (!file.delete()) {
                        this.cacheFileFinal.deleteOnExit();
                    }
                } catch (Exception e) {
                    FileLog.m67e(e);
                }
            }
            File file2 = this.cacheFileTemp;
            if (file2 != null) {
                try {
                    if (!file2.delete()) {
                        this.cacheFileTemp.deleteOnExit();
                    }
                } catch (Exception e2) {
                    FileLog.m67e(e2);
                }
            }
            File file3 = this.cacheFileParts;
            if (file3 != null) {
                try {
                    if (!file3.delete()) {
                        this.cacheFileParts.deleteOnExit();
                    }
                } catch (Exception e3) {
                    FileLog.m67e(e3);
                }
            }
            File file4 = this.cacheIvTemp;
            if (file4 != null) {
                try {
                    if (!file4.delete()) {
                        this.cacheIvTemp.deleteOnExit();
                    }
                } catch (Exception e4) {
                    FileLog.m67e(e4);
                }
            }
            File file5 = this.cacheFilePreload;
            if (file5 != null) {
                try {
                    if (file5.delete()) {
                        return;
                    }
                    this.cacheFilePreload.deleteOnExit();
                } catch (Exception e5) {
                    FileLog.m67e(e5);
                }
            }
        }
    }

    private void cancelRequests() {
        if (this.requestInfos != null) {
            int[] iArr = new int[2];
            int i = 0;
            for (int i2 = 0; i2 < this.requestInfos.size(); i2++) {
                RequestInfo requestInfo = this.requestInfos.get(i2);
                if (requestInfo.requestToken != 0) {
                    ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo.requestToken, true);
                    char c = requestInfo.connectionType == 2 ? (char) 0 : (char) 1;
                    iArr[c] = iArr[c] + requestInfo.chunkSize;
                }
            }
            while (i < 2) {
                int i3 = i == 0 ? 2 : ConnectionsManager.ConnectionTypeDownload2;
                if (iArr[i] > 1048576) {
                    ConnectionsManager.getInstance(this.currentAccount).discardConnection(this.isCdn ? this.cdnDatacenterId : this.datacenterId, i3);
                }
                i++;
            }
        }
    }

    private void cleanup() {
        try {
            RandomAccessFile randomAccessFile = this.fileOutputStream;
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.getChannel().close();
                } catch (Exception e) {
                    FileLog.m67e(e);
                }
                this.fileOutputStream.close();
                this.fileOutputStream = null;
            }
        } catch (Exception e2) {
            FileLog.m67e(e2);
        }
        try {
            RandomAccessFile randomAccessFile2 = this.preloadStream;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.getChannel().close();
                } catch (Exception e3) {
                    FileLog.m67e(e3);
                }
                this.preloadStream.close();
                this.preloadStream = null;
            }
        } catch (Exception e4) {
            FileLog.m67e(e4);
        }
        try {
            RandomAccessFile randomAccessFile3 = this.fileReadStream;
            if (randomAccessFile3 != null) {
                try {
                    randomAccessFile3.getChannel().close();
                } catch (Exception e5) {
                    FileLog.m67e(e5);
                }
                this.fileReadStream.close();
                this.fileReadStream = null;
            }
        } catch (Exception e6) {
            FileLog.m67e(e6);
        }
        try {
            if (this.filePartsStream != null) {
                synchronized (this) {
                    try {
                        this.filePartsStream.getChannel().close();
                    } catch (Exception e7) {
                        FileLog.m67e(e7);
                    }
                    this.filePartsStream.close();
                    this.filePartsStream = null;
                }
            }
        } catch (Exception e8) {
            FileLog.m67e(e8);
        }
        try {
            RandomAccessFile randomAccessFile4 = this.fiv;
            if (randomAccessFile4 != null) {
                randomAccessFile4.close();
                this.fiv = null;
            }
        } catch (Exception e9) {
            FileLog.m67e(e9);
        }
        if (this.delayedRequestInfos != null) {
            for (int i = 0; i < this.delayedRequestInfos.size(); i++) {
                RequestInfo requestInfo = this.delayedRequestInfos.get(i);
                if (requestInfo.response != null) {
                    requestInfo.response.disableFree = false;
                    requestInfo.response.freeResources();
                } else if (requestInfo.responseWeb != null) {
                    requestInfo.responseWeb.disableFree = false;
                    requestInfo.responseWeb.freeResources();
                } else if (requestInfo.responseCdn != null) {
                    requestInfo.responseCdn.disableFree = false;
                    requestInfo.responseCdn.freeResources();
                }
            }
            this.delayedRequestInfos.clear();
        }
    }

    private void onFinishLoadingFile(final boolean z, int i, boolean z2) {
        if (this.state != 1) {
            return;
        }
        this.state = 3;
        notifyStreamListeners();
        cleanup();
        if (this.isPreloadVideoOperation || z2) {
            this.preloadFinished = true;
            if (BuildVars.DEBUG_VERSION) {
                if (i == 1) {
                    FileLog.m70d("file already exist " + this.cacheFileTemp);
                } else {
                    FileLog.m70d("finished preloading file to " + this.cacheFileTemp + " loaded " + this.downloadedBytes + " of " + this.totalBytesCount + " prefSize=" + this.preloadPrefixSize);
                }
            }
            if (this.fileMetadata != null) {
                if (this.cacheFileTemp != null) {
                    FileLoader.getInstance(this.currentAccount).getFileDatabase().removeFiles(Collections.singletonList(new CacheModel.FileInfo(this.cacheFileTemp)));
                }
                if (this.cacheFileParts != null) {
                    FileLoader.getInstance(this.currentAccount).getFileDatabase().removeFiles(Collections.singletonList(new CacheModel.FileInfo(this.cacheFileParts)));
                }
            }
            this.delegate.didPreFinishLoading(this, this.cacheFileFinal);
            this.delegate.didFinishLoadingFile(this, this.cacheFileFinal);
            return;
        }
        final File file = this.cacheIvTemp;
        final File file2 = this.cacheFileParts;
        final File file3 = this.cacheFilePreload;
        final File file4 = this.cacheFileTemp;
        filesQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                FileLoadOperation.this.lambda$onFinishLoadingFile$15(file, file2, file3, file4, z);
            }
        });
        this.cacheIvTemp = null;
        this.cacheFileParts = null;
        this.cacheFilePreload = null;
        this.delegate.didPreFinishLoading(this, this.cacheFileFinal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ void lambda$onFinishLoadingFile$15(java.io.File r5, java.io.File r6, java.io.File r7, java.io.File r8, final boolean r9) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.lambda$onFinishLoadingFile$15(java.io.File, java.io.File, java.io.File, java.io.File, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$12(boolean z) {
        try {
            onFinishLoadingFile(z, 0, false);
        } catch (Exception unused) {
            onFail(false, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$13() {
        onFail(false, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishLoadingFile$14(boolean z) {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m70d("finished downloading file to " + this.cacheFileFinal + " time = " + (System.currentTimeMillis() - this.startTime) + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
        }
        if (z) {
            int i = this.currentType;
            if (i == 50331648) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 3, 1);
            } else if (i == 33554432) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 2, 1);
            } else if (i == 16777216) {
                StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 4, 1);
            } else if (i == 67108864) {
                String str = this.ext;
                if (str != null && (str.toLowerCase().endsWith("mp3") || this.ext.toLowerCase().endsWith("m4a"))) {
                    StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 7, 1);
                } else {
                    StatsController.getInstance(this.currentAccount).incrementReceivedItemsCount(ApplicationLoader.getCurrentNetworkType(), 5, 1);
                }
            }
        }
        this.delegate.didFinishLoadingFile(this, this.cacheFileFinal);
    }

    private void delayRequestInfo(RequestInfo requestInfo) {
        this.delayedRequestInfos.add(requestInfo);
        if (requestInfo.response != null) {
            requestInfo.response.disableFree = true;
        } else if (requestInfo.responseWeb != null) {
            requestInfo.responseWeb.disableFree = true;
        } else if (requestInfo.responseCdn != null) {
            requestInfo.responseCdn.disableFree = true;
        }
    }

    private long findNextPreloadDownloadOffset(long j, long j2, NativeByteBuffer nativeByteBuffer) {
        long j3;
        int limit = nativeByteBuffer.limit();
        long j4 = j;
        do {
            if (j4 < j2 - (this.preloadTempBuffer != null ? 16 : 0)) {
                return 0L;
            }
            j3 = j2 + limit;
            if (j4 >= j3) {
                return 0L;
            }
            if (j4 >= j3 - 16) {
                long j5 = j3 - j4;
                if (j5 > 2147483647L) {
                    throw new RuntimeException("!!!");
                }
                this.preloadTempBufferCount = (int) j5;
                nativeByteBuffer.position(nativeByteBuffer.limit() - this.preloadTempBufferCount);
                nativeByteBuffer.readBytes(this.preloadTempBuffer, 0, this.preloadTempBufferCount, false);
                return j3;
            }
            if (this.preloadTempBufferCount != 0) {
                nativeByteBuffer.position(0);
                byte[] bArr = this.preloadTempBuffer;
                int i = this.preloadTempBufferCount;
                nativeByteBuffer.readBytes(bArr, i, 16 - i, false);
                this.preloadTempBufferCount = 0;
            } else {
                long j6 = j4 - j2;
                if (j6 > 2147483647L) {
                    throw new RuntimeException("!!!");
                }
                nativeByteBuffer.position((int) j6);
                nativeByteBuffer.readBytes(this.preloadTempBuffer, 0, 16, false);
            }
            byte[] bArr2 = this.preloadTempBuffer;
            int i2 = ((bArr2[0] & 255) << 24) + ((bArr2[1] & 255) << 16) + ((bArr2[2] & 255) << 8) + (bArr2[3] & 255);
            if (i2 == 0) {
                return 0L;
            }
            if (i2 == 1) {
                i2 = ((bArr2[12] & 255) << 24) + ((bArr2[13] & 255) << 16) + ((bArr2[14] & 255) << 8) + (bArr2[15] & 255);
            }
            if (bArr2[4] == 109 && bArr2[5] == 111 && bArr2[6] == 111 && bArr2[7] == 118) {
                return -i2;
            }
            j4 += i2;
        } while (j4 < j3);
        return j4;
    }

    private void requestFileOffsets(long j) {
        if (this.requestingCdnOffsets) {
            return;
        }
        this.requestingCdnOffsets = true;
        TLRPC$TL_upload_getCdnFileHashes tLRPC$TL_upload_getCdnFileHashes = new TLRPC$TL_upload_getCdnFileHashes();
        tLRPC$TL_upload_getCdnFileHashes.file_token = this.cdnToken;
        tLRPC$TL_upload_getCdnFileHashes.offset = j;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_upload_getCdnFileHashes, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda18
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                FileLoadOperation.this.lambda$requestFileOffsets$16(tLObject, tLRPC$TL_error);
            }
        }, null, null, 0, this.datacenterId, 1, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestFileOffsets$16(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error != null) {
            onFail(false, 0);
            return;
        }
        this.requestingCdnOffsets = false;
        TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
        if (!tLRPC$Vector.objects.isEmpty()) {
            if (this.cdnHashes == null) {
                this.cdnHashes = new HashMap<>();
            }
            for (int i = 0; i < tLRPC$Vector.objects.size(); i++) {
                TLRPC$TL_fileHash tLRPC$TL_fileHash = (TLRPC$TL_fileHash) tLRPC$Vector.objects.get(i);
                this.cdnHashes.put(Long.valueOf(tLRPC$TL_fileHash.offset), tLRPC$TL_fileHash);
            }
        }
        for (int i2 = 0; i2 < this.delayedRequestInfos.size(); i2++) {
            RequestInfo requestInfo = this.delayedRequestInfos.get(i2);
            if (this.notLoadedBytesRanges != null || this.downloadedBytes == requestInfo.offset) {
                this.delayedRequestInfos.remove(i2);
                if (processRequestResult(requestInfo, null)) {
                    return;
                }
                if (requestInfo.response != null) {
                    requestInfo.response.disableFree = false;
                    requestInfo.response.freeResources();
                    return;
                } else if (requestInfo.responseWeb != null) {
                    requestInfo.responseWeb.disableFree = false;
                    requestInfo.responseWeb.freeResources();
                    return;
                } else if (requestInfo.responseCdn != null) {
                    requestInfo.responseCdn.disableFree = false;
                    requestInfo.responseCdn.freeResources();
                    return;
                } else {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0534 A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0568 A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x05ce A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:225:0x05d5 A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00a1 A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00de A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0118 A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0225 A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0231 A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x023f A[Catch: Exception -> 0x05e7, TryCatch #2 {Exception -> 0x05e7, blocks: (B:12:0x0054, B:14:0x0058, B:16:0x0062, B:18:0x0066, B:20:0x006c, B:30:0x0091, B:33:0x0099, B:35:0x00a1, B:37:0x00b1, B:40:0x00bf, B:42:0x00c6, B:44:0x00de, B:46:0x0114, B:48:0x0118, B:50:0x013c, B:51:0x0165, B:53:0x0169, B:54:0x0170, B:56:0x019b, B:58:0x01ae, B:60:0x01c2, B:62:0x01d6, B:64:0x01e3, B:66:0x01e8, B:68:0x0209, B:70:0x020d, B:72:0x0213, B:74:0x0219, B:80:0x0225, B:204:0x0560, B:206:0x0568, B:208:0x0574, B:211:0x057f, B:212:0x0582, B:214:0x058e, B:216:0x0594, B:217:0x05a3, B:219:0x05a9, B:220:0x05b8, B:222:0x05be, B:224:0x05ce, B:225:0x05d5, B:227:0x05da, B:81:0x0231, B:83:0x0235, B:61:0x01cd, B:63:0x01db, B:84:0x023f, B:88:0x0251, B:90:0x0255, B:92:0x025a, B:94:0x0260, B:99:0x026c, B:117:0x0294, B:119:0x029a, B:121:0x02b3, B:123:0x02b9, B:128:0x02cd, B:129:0x02e3, B:130:0x02e4, B:131:0x02e8, B:133:0x02ec, B:134:0x031e, B:136:0x0322, B:138:0x032f, B:139:0x0366, B:141:0x038d, B:143:0x039f, B:145:0x03af, B:151:0x03bf, B:153:0x03d8, B:155:0x03df, B:157:0x03e5, B:166:0x03f9, B:168:0x0409, B:169:0x041b, B:174:0x042c, B:175:0x0433, B:176:0x0434, B:178:0x0441, B:180:0x047f, B:182:0x048e, B:184:0x0492, B:186:0x0496, B:187:0x04e7, B:189:0x04ed, B:190:0x050b, B:192:0x0515, B:194:0x0530, B:196:0x0534, B:197:0x0540, B:199:0x0548, B:201:0x054d, B:148:0x03b9, B:103:0x0277, B:107:0x027f, B:228:0x05e1, B:22:0x0074, B:24:0x007a, B:25:0x0081, B:27:0x0087), top: B:290:0x0054 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected boolean processRequestResult(org.telegram.messenger.FileLoadOperation.RequestInfo r47, org.telegram.tgnet.TLRPC$TL_error r48) {
        /*
            Method dump skipped, instructions count: 1875
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.processRequestResult(org.telegram.messenger.FileLoadOperation$RequestInfo, org.telegram.tgnet.TLRPC$TL_error):boolean");
    }

    private boolean canFinishPreload() {
        return this.isStory && this.priority < 3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onFail(boolean z, final int i) {
        cleanup();
        this.state = i == 1 ? 4 : 2;
        if (this.delegate != null && BuildVars.LOGS_ENABLED) {
            long currentTimeMillis = this.startTime != 0 ? System.currentTimeMillis() - this.startTime : 0L;
            if (i == 1) {
                FileLog.m70d("cancel downloading file to " + this.cacheFileFinal + " time = " + currentTimeMillis + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
            } else {
                FileLog.m70d("failed downloading file to " + this.cacheFileFinal + " reason = " + i + " time = " + currentTimeMillis + " dc = " + this.datacenterId + " size = " + AndroidUtilities.formatFileSize(this.totalBytesCount));
            }
        }
        if (z) {
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    FileLoadOperation.this.lambda$onFail$17(i);
                }
            });
            return;
        }
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            fileLoadOperationDelegate.didFailedLoadingFile(this, i);
        }
        notifyStreamListeners();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFail$17(int i) {
        FileLoadOperationDelegate fileLoadOperationDelegate = this.delegate;
        if (fileLoadOperationDelegate != null) {
            fileLoadOperationDelegate.didFailedLoadingFile(this, i);
        }
        notifyStreamListeners();
    }

    private void clearOperaion(RequestInfo requestInfo, boolean z) {
        int[] iArr = new int[2];
        long j = Long.MAX_VALUE;
        int i = 0;
        while (i < this.requestInfos.size()) {
            RequestInfo requestInfo2 = this.requestInfos.get(i);
            long min = Math.min(requestInfo2.offset, j);
            if (this.isPreloadVideoOperation) {
                this.requestedPreloadedBytesRanges.remove(Long.valueOf(requestInfo2.offset));
            } else {
                removePart(this.notRequestedBytesRanges, requestInfo2.offset, requestInfo2.offset + requestInfo2.chunkSize);
            }
            if (requestInfo != requestInfo2 && requestInfo2.requestToken != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(requestInfo2.requestToken, true);
            }
            i++;
            j = min;
        }
        int i2 = 0;
        while (i2 < 2) {
            int i3 = i2 == 0 ? 2 : ConnectionsManager.ConnectionTypeDownload2;
            if (iArr[i2] > 1048576) {
                ConnectionsManager.getInstance(this.currentAccount).discardConnection(this.isCdn ? this.cdnDatacenterId : this.datacenterId, i3);
            }
            i2++;
        }
        this.requestInfos.clear();
        long j2 = j;
        for (int i4 = 0; i4 < this.delayedRequestInfos.size(); i4++) {
            RequestInfo requestInfo3 = this.delayedRequestInfos.get(i4);
            if (this.isPreloadVideoOperation) {
                this.requestedPreloadedBytesRanges.remove(Long.valueOf(requestInfo3.offset));
            } else {
                removePart(this.notRequestedBytesRanges, requestInfo3.offset, requestInfo3.offset + requestInfo3.chunkSize);
            }
            if (requestInfo3.response != null) {
                requestInfo3.response.disableFree = false;
                requestInfo3.response.freeResources();
            } else if (requestInfo3.responseWeb != null) {
                requestInfo3.responseWeb.disableFree = false;
                requestInfo3.responseWeb.freeResources();
            } else if (requestInfo3.responseCdn != null) {
                requestInfo3.responseCdn.disableFree = false;
                requestInfo3.responseCdn.freeResources();
            }
            j2 = Math.min(requestInfo3.offset, j2);
        }
        this.delayedRequestInfos.clear();
        this.requestsCount = 0;
        if (!z && this.isPreloadVideoOperation) {
            this.requestedBytesCount = this.totalPreloadedBytes;
        } else if (this.notLoadedBytesRanges == null) {
            this.downloadedBytes = j2;
            this.requestedBytesCount = j2;
        }
    }

    private void requestReference(RequestInfo requestInfo) {
        TLRPC$WebPage tLRPC$WebPage;
        if (this.requestingReference) {
            return;
        }
        clearOperaion(null, false);
        this.requestingReference = true;
        Object obj = this.parentObject;
        if (obj instanceof MessageObject) {
            MessageObject messageObject = (MessageObject) obj;
            if (messageObject.getId() < 0 && (tLRPC$WebPage = messageObject.messageOwner.media.webpage) != null) {
                this.parentObject = tLRPC$WebPage;
            }
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m70d("debug_loading: " + this.cacheFileFinal.getName() + " file reference expired ");
        }
        FileRefController.getInstance(this.currentAccount).requestReference(this.parentObject, this.location, this, requestInfo);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bc  */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r11v11 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void startDownloadRequest(int r29) {
        /*
            Method dump skipped, instructions count: 1039
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.messenger.FileLoadOperation.startDownloadRequest(int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$18(RequestInfo requestInfo) {
        processRequestResult(requestInfo, null);
        requestInfo.response.freeResources();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$20(final RequestInfo requestInfo, int i, final int i2, TLObject tLObject, TLObject tLObject2, TLRPC$TL_error tLRPC$TL_error) {
        byte[] bArr;
        if (this.requestInfos.contains(requestInfo)) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m70d("debug_loading: " + this.cacheFileFinal.getName() + " time=" + (System.currentTimeMillis() - requestInfo.requestStartTime) + " dcId=" + i + " cdn=" + this.isCdn + " conType=" + i2 + " reqId" + requestInfo.requestToken);
            }
            if (requestInfo == this.priorityRequestInfo) {
                if (BuildVars.DEBUG_VERSION) {
                    FileLog.m70d("frame get request completed " + this.priorityRequestInfo.offset);
                }
                this.priorityRequestInfo = null;
            }
            if (tLRPC$TL_error != null) {
                if (tLRPC$TL_error.code == -2000) {
                    this.requestInfos.remove(requestInfo);
                    this.requestedBytesCount -= requestInfo.chunkSize;
                    removePart(this.notRequestedBytesRanges, requestInfo.offset, requestInfo.offset + requestInfo.chunkSize);
                    return;
                } else if (FileRefController.isFileRefError(tLRPC$TL_error.text)) {
                    requestReference(requestInfo);
                    return;
                } else if ((tLObject instanceof TLRPC$TL_upload_getCdnFile) && tLRPC$TL_error.text.equals("FILE_TOKEN_INVALID")) {
                    this.isCdn = false;
                    clearOperaion(requestInfo, false);
                    startDownloadRequest(i2);
                    return;
                }
            }
            if (tLObject2 instanceof TLRPC$TL_upload_fileCdnRedirect) {
                TLRPC$TL_upload_fileCdnRedirect tLRPC$TL_upload_fileCdnRedirect = (TLRPC$TL_upload_fileCdnRedirect) tLObject2;
                if (!tLRPC$TL_upload_fileCdnRedirect.file_hashes.isEmpty()) {
                    if (this.cdnHashes == null) {
                        this.cdnHashes = new HashMap<>();
                    }
                    for (int i3 = 0; i3 < tLRPC$TL_upload_fileCdnRedirect.file_hashes.size(); i3++) {
                        TLRPC$TL_fileHash tLRPC$TL_fileHash = tLRPC$TL_upload_fileCdnRedirect.file_hashes.get(i3);
                        this.cdnHashes.put(Long.valueOf(tLRPC$TL_fileHash.offset), tLRPC$TL_fileHash);
                    }
                }
                byte[] bArr2 = tLRPC$TL_upload_fileCdnRedirect.encryption_iv;
                if (bArr2 == null || (bArr = tLRPC$TL_upload_fileCdnRedirect.encryption_key) == null || bArr2.length != 16 || bArr.length != 32) {
                    TLRPC$TL_error tLRPC$TL_error2 = new TLRPC$TL_error();
                    tLRPC$TL_error2.text = "bad redirect response";
                    tLRPC$TL_error2.code = 400;
                    processRequestResult(requestInfo, tLRPC$TL_error2);
                    return;
                }
                this.isCdn = true;
                if (this.notCheckedCdnRanges == null) {
                    ArrayList<Range> arrayList = new ArrayList<>();
                    this.notCheckedCdnRanges = arrayList;
                    arrayList.add(new Range(0L, this.maxCdnParts));
                }
                this.cdnDatacenterId = tLRPC$TL_upload_fileCdnRedirect.dc_id;
                this.cdnIv = tLRPC$TL_upload_fileCdnRedirect.encryption_iv;
                this.cdnKey = tLRPC$TL_upload_fileCdnRedirect.encryption_key;
                this.cdnToken = tLRPC$TL_upload_fileCdnRedirect.file_token;
                clearOperaion(requestInfo, false);
                startDownloadRequest(i2);
            } else if (tLObject2 instanceof TLRPC$TL_upload_cdnFileReuploadNeeded) {
                if (this.reuploadingCdn) {
                    return;
                }
                clearOperaion(requestInfo, false);
                this.reuploadingCdn = true;
                TLRPC$TL_upload_reuploadCdnFile tLRPC$TL_upload_reuploadCdnFile = new TLRPC$TL_upload_reuploadCdnFile();
                tLRPC$TL_upload_reuploadCdnFile.file_token = this.cdnToken;
                tLRPC$TL_upload_reuploadCdnFile.request_token = ((TLRPC$TL_upload_cdnFileReuploadNeeded) tLObject2).request_token;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_upload_reuploadCdnFile, new RequestDelegate() { // from class: org.telegram.messenger.FileLoadOperation$$ExternalSyntheticLambda19
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject3, TLRPC$TL_error tLRPC$TL_error3) {
                        FileLoadOperation.this.lambda$startDownloadRequest$19(i2, requestInfo, tLObject3, tLRPC$TL_error3);
                    }
                }, null, null, 0, this.datacenterId, 1, true);
            } else {
                if (tLObject2 instanceof TLRPC$TL_upload_file) {
                    requestInfo.response = (TLRPC$TL_upload_file) tLObject2;
                } else if (tLObject2 instanceof TLRPC$TL_upload_webFile) {
                    requestInfo.responseWeb = (TLRPC$TL_upload_webFile) tLObject2;
                    if (this.totalBytesCount == 0 && requestInfo.responseWeb.size != 0) {
                        this.totalBytesCount = requestInfo.responseWeb.size;
                    }
                } else {
                    requestInfo.responseCdn = (TLRPC$TL_upload_cdnFile) tLObject2;
                }
                if (tLObject2 != null) {
                    int i4 = this.currentType;
                    if (i4 == 50331648) {
                        StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 3, tLObject2.getObjectSize() + 4);
                    } else if (i4 == 33554432) {
                        StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 2, tLObject2.getObjectSize() + 4);
                    } else if (i4 == 16777216) {
                        StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 4, tLObject2.getObjectSize() + 4);
                    } else if (i4 == 67108864) {
                        String str = this.ext;
                        if (str != null && (str.toLowerCase().endsWith("mp3") || this.ext.toLowerCase().endsWith("m4a"))) {
                            StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 7, tLObject2.getObjectSize() + 4);
                        } else {
                            StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(tLObject2.networkType, 5, tLObject2.getObjectSize() + 4);
                        }
                    }
                }
                processRequestResult(requestInfo, tLRPC$TL_error);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startDownloadRequest$19(int i, RequestInfo requestInfo, TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        this.reuploadingCdn = false;
        if (tLRPC$TL_error == null) {
            TLRPC$Vector tLRPC$Vector = (TLRPC$Vector) tLObject;
            if (!tLRPC$Vector.objects.isEmpty()) {
                if (this.cdnHashes == null) {
                    this.cdnHashes = new HashMap<>();
                }
                for (int i2 = 0; i2 < tLRPC$Vector.objects.size(); i2++) {
                    TLRPC$TL_fileHash tLRPC$TL_fileHash = (TLRPC$TL_fileHash) tLRPC$Vector.objects.get(i2);
                    this.cdnHashes.put(Long.valueOf(tLRPC$TL_fileHash.offset), tLRPC$TL_fileHash);
                }
            }
            startDownloadRequest(i);
        } else if (tLRPC$TL_error.text.equals("FILE_TOKEN_INVALID") || tLRPC$TL_error.text.equals("REQUEST_TOKEN_INVALID")) {
            this.isCdn = false;
            clearOperaion(requestInfo, false);
            startDownloadRequest(i);
        } else {
            onFail(false, 0);
        }
    }

    public void setDelegate(FileLoadOperationDelegate fileLoadOperationDelegate) {
        this.delegate = fileLoadOperationDelegate;
    }

    public static long floorDiv(long j, long j2) {
        long j3 = j / j2;
        return ((j ^ j2) >= 0 || j2 * j3 == j) ? j3 : j3 - 1;
    }

    public boolean isFinished() {
        return this.state == 3;
    }
}
