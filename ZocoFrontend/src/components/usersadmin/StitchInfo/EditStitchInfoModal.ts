// // EditStitchInfoModal.js

// import React, { useState, useEffect } from "react";
// import {
//   Modal,
//   ModalContent,
//   ModalHeader,
//   ModalBody,
//   ModalFooter,
//   Button,
//   Input,
// } from "@nextui-org/react";


// const EditStitchInfoModal = ({
//   isOpen,
//   onClose,
//   handleEditStitchInfo,
//   stitchInfo,
// }: {
//   isOpen: any;
//   onClose: any;
//   handleEditStitchInfo: any;
//   stitchInfo: { stitchInfoname: string; email: string; role: string; PasswordHash: string };
// }) => {
//   const [editedStitchInfo, setEditedStitchInfo] = useState({
//     stitchInfoname: "",
//     email: "",
//     role: "",
//   });
 

//   useEffect(() => {
//     if (stitchInfo) {
//       setEditedStitchInfo(stitchInfo);
//     }
//   }, [stitchInfo]);

 

//   const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
//     const { name, value } = e.target;
//     setEditedStitchInfo((prevStitchInfo) => ({
//       ...prevStitchInfo,
//       [name]: value,
//     }));
//   };

//   const handleSubmit = () => {
//     handleEditStitchInfo(editedStitchInfo);
//     onClose();
//   };

//   return (
//     <Modal size="md" isOpen={isOpen} onClose={onClose}>
//       <ModalContent>
//         <ModalHeader className="flex flex-col gap-1">
//           Editar usuario
//         </ModalHeader>
//         <ModalBody>
//           <Input
//             type="text"
//             label="Stitch name"
//             placeholder="Nombre de usuario"
//             variant="bordered"
//             size="sm"
//             name="username"
//             value={editedStitchInfo.stitchInfoname}
//             onChange={handleChange}
//             labelPlacement="outside"
//           />
//           <Input
//             type="email"
//             label="Email"
//             placeholder="Email del usuario"
//             variant="bordered"
//             size="sm"
//             name="email"
//             value={editedStitchInfo.email}
//             onChange={handleChange}
//             labelPlacement="outside"
//           />

//           <Input
//             type="text"
//             label="Role"
//             placeholder="Rol del usuario"
//             variant="bordered"
//             size="sm"
//             name="role"
//             value={editedStitchInfo.role}
//             onChange={handleChange}
//             labelPlacement="outside"
//           />
//         </ModalBody>
//         <ModalFooter>
//           <Button color="danger" variant="light" onClick={onClose}>
//             Cerrar
//           </Button>
//           <Button className="bg-[#B3C300]" onClick={handleSubmit}>
//             <span className="text-white font-[500]">Guardar cambios</span>
//           </Button>
//         </ModalFooter>
//       </ModalContent>
//     </Modal>
//   );
// };

// export default EditStitchInfoModal;
