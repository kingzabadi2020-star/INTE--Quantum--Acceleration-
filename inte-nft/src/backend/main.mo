import Collection "lib/Collection";
import NftMixin "mixins/Nft";

persistent actor {
  include NftMixin(Collection.collectionName, Collection.collectionSymbol, Collection.tokens);
};
